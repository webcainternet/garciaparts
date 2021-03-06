<?php
class ModelModuleSimple extends Model {
    public function syncOpencartCustomFields($fields, $storeId) {
        $opencartVersion = explode('.', VERSION);
        $opencartVersion = floatval($opencartVersion[0].$opencartVersion[1].$opencartVersion[2].'.'.(isset($opencartVersion[3]) ? $opencartVersion[3] : 0));

        $this->load->model('setting/setting');
        $this->load->model('localisation/language');

        if ($opencartVersion < 210) {
            $this->load->model('sale/custom_field');
            $this->load->model('sale/customer_group');

            $customerGroups = $this->model_sale_customer_group->getCustomerGroups();
        } else {
            $this->load->model('customer/custom_field');
            $this->load->model('customer/customer_group');

            $customerGroups = $this->model_customer_customer_group->getCustomerGroups();
        }

        $languages = array();

        foreach ($this->model_localisation_language->getLanguages() as $language) {
            $languages[trim(str_replace('-', '_', strtolower($language['code'])), '.')] = $language['language_id'];
        }

        //$customFieldsLinks = array();
        $customFieldsLinks = $this->config->get('simple_custom_fields');

        if (empty($customFieldsLinks)) {
            $customFieldsLinks = array();
        }

        foreach ($fields as $field) {
            if ($field['custom'] && empty($field['sync'])) {
                unset($customFieldsLinks[$field['id']]);
            } elseif ($field['custom'] && !empty($field['sync'])) {
                $custom_field_id = isset($customFieldsLinks[$field['id']]) && !empty($customFieldsLinks[$field['id']]['id']) ? $customFieldsLinks[$field['id']]['id'] : '';

                $data = array();

                if ($custom_field_id) {
                    if ($opencartVersion < 210) {
                        $data = $this->model_sale_custom_field->getCustomField($custom_field_id);
                    } else {
                        $data = $this->model_customer_custom_field->getCustomField($custom_field_id);
                    }
                }

                if (empty($data)) {
                    $custom_field_id = '';
                    unset($customFieldsLinks[$field['id']]);
                } else {
                    if ($opencartVersion < 210) {
                        $data['custom_field_description']    = $this->model_sale_custom_field->getCustomFieldDescriptions($custom_field_id);
                        $data['custom_field_customer_group'] = $this->model_sale_custom_field->getCustomFieldCustomerGroups($custom_field_id);
                    } else {
                        $data['custom_field_description']    = $this->model_customer_custom_field->getCustomFieldDescriptions($custom_field_id);
                        $data['custom_field_customer_group'] = $this->model_customer_custom_field->getCustomFieldCustomerGroups($custom_field_id);
                    }
                }

                if (!$custom_field_id) {
                    $data = array(
                        'custom_field_id'             => '',
                        'type'                        => $field['type'] == 'datetime' ? 'date' : $field['type'],
                        'value'                       => '',
                        'location'                    => $field['object'] == 'address' ? 'address' : 'account',
                        'status'                      => 1,
                        'sort_order'                  => 0,
                        'custom_field_description'    => array(),
                        'custom_field_customer_group' => array(),
                        'custom_field_value'          => array()
                    );

                    foreach ($customerGroups as $groupInfo) {
                        $data['custom_field_customer_group'][] = array(
                            'customer_group_id' => $groupInfo['customer_group_id'],
                            'required'          => 1
                        );
                    }

                    foreach ($languages as $langCode => $langId) {
                        if (isset($field['label'][$langCode])) {
                            $fieldLabel = $field['label'][$langCode];
                        } else {
                            $fieldLabel = $field['id'];
                        }

                        $data['custom_field_description'][$langId] = array('name' => $fieldLabel);
                    }
                }

                if (in_array($field['type'], array('select', 'radio', 'checkbox'))) {
                    $custom_field_value_description = array();
                    $lastLangId = 0;
                    foreach ($languages as $langCode => $langId) {
                        if (!empty($field['valuesList'][$langCode])) {
                            $lastLangId = $langId;
                            $so = 0;
                            foreach ($field['valuesList'][$langCode] as $itemInfo) {
                                if (empty($data['custom_field_value'][$itemInfo['id']])) {
                                    $data['custom_field_value'][$itemInfo['id']] = array(
                                        'custom_field_value_id'          => 0,
                                        'sort_order'                     => $so++,
                                        'custom_field_value_description' => array(
                                            $langId => array('name' => $itemInfo['text'])
                                        )
                                    );
                                } else {
                                    $data['custom_field_value'][$itemInfo['id']]['custom_field_value_description'][$langId] = array('name' => $itemInfo['text']);
                                }
                            }
                        } else {
                            foreach ($data['custom_field_value'] as $valueId => $valueInfo) {
                                foreach ($data['custom_field_value_description'] as $descLangId => $descInfo) {
                                    $data['custom_field_value'][$valueId]['custom_field_value_description'][$langId] = array('name' => $data['custom_field_value'][$valueId]['custom_field_value_description'][$lastLangId]['name']);
                                }
                            }
                        }
                    }
                }

                $customFieldId = $data['custom_field_id'];

                if ($data['custom_field_id']) {
                    if ($opencartVersion < 210) {
                        $this->model_sale_custom_field->editCustomField($data['custom_field_id'], $data);
                    } else {
                        $this->model_customer_custom_field->editCustomField($data['custom_field_id'], $data);
                    }
                } else {
                    // stupid hack for retrieving of last id without changes in opencart's code

                    if ($opencartVersion < 210) {
                        $customFieldsBefore = $this->model_sale_custom_field->getCustomFields();
                        $this->model_sale_custom_field->addCustomField($data);
                        $customFieldsAfter = $this->model_sale_custom_field->getCustomFields();
                    } else {
                        $customFieldsBefore = $this->model_customer_custom_field->getCustomFields();
                        $this->model_customer_custom_field->addCustomField($data);
                        $customFieldsAfter = $this->model_customer_custom_field->getCustomFields();
                    }

                    foreach ($customFieldsAfter as $customFieldInfoAfter) {
                        $customFieldId = $customFieldInfoAfter['custom_field_id'];
                        foreach ($customFieldsBefore as $customFieldInfoBefore) {
                            if ($customFieldInfoAfter['custom_field_id'] == $customFieldInfoBefore['custom_field_id']) {
                                $customFieldId = -1;
                            }
                        }
                        if ($customFieldId >= 0) {
                            break;
                        }
                    }

                    $customFieldsLinks[$field['id']] = array(
                        'id'     => $customFieldId,
                        'values' => array()
                    );
                }

                if ($opencartVersion < 210) {
                    $savedValues = $this->model_sale_custom_field->getCustomFieldValues($customFieldId);
                } else {
                    $savedValues = $this->model_customer_custom_field->getCustomFieldValues($customFieldId);
                }

                if (!empty($savedValues) && is_array($savedValues)) {
                    foreach ($savedValues as $savedValueInfo) {
                        foreach ($data['custom_field_value'] as $simpleValueId => $valueInfo) {
                            if ($valueInfo['custom_field_value_description'][$this->config->get('config_language_id')]['name'] == $savedValueInfo['name']) {
                                $customFieldsLinks[$field['id']]['values'][$simpleValueId] = $savedValueInfo['custom_field_value_id'];
                            }
                        }
                    }
                }
            }
        }

        $this->model_setting_setting->editSettingValue('simple', 'simple_custom_fields', $customFieldsLinks, $storeId);

        if ($opencartVersion < 210) {
            $opencartFields = $this->model_sale_custom_field->getCustomFields();
        } else {
            $opencartFields = $this->model_customer_custom_field->getCustomFields();
        }

        return array(
            'customFields' => $customFieldsLinks,
            'opencartFields' => $opencartFields
        );
    }

    public function createTableForCustomerFields() {
        $this->db->query('CREATE TABLE IF NOT EXISTS `'.DB_PREFIX.'customer_simple_fields` (
                          `customer_id` int(11) NOT NULL,
                          `metadata` text NULL,
                          PRIMARY KEY (`customer_id`)
                          ) ENGINE=MyISAM DEFAULT CHARSET=utf8;');
    }

    public function createTableForAddressFields() {
        $this->db->query('CREATE TABLE IF NOT EXISTS `'.DB_PREFIX.'address_simple_fields` (
                          `address_id` int(11) NOT NULL,
                          `metadata` text NULL,
                          PRIMARY KEY (`address_id`)
                          ) ENGINE=MyISAM DEFAULT CHARSET=utf8;');
    }

    public function createTableForOrderFields() {
        $this->db->query('CREATE TABLE IF NOT EXISTS `'.DB_PREFIX.'order_simple_fields` (
                          `order_id` int(11) NOT NULL,
                          `metadata` text NULL,
                          PRIMARY KEY (`order_id`)
                          ) ENGINE=MyISAM DEFAULT CHARSET=utf8;');
    }

    public function alterTableOfCustomer($fields) {
        $this->alterTable('customer_simple_fields', $fields);
    }

    public function alterTableOfAddress($fields) {
        $this->alterTable('address_simple_fields', $fields);
    }

    public function alterTableOfOrder($fields) {
        $this->alterTable('order_simple_fields', $fields);
    }

    public function createUrlAliases() {
        $query = $this->db->query("SHOW TABLES LIKE '" . DB_PREFIX . "url_alias'");
        if ($query->rows) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET `query` = 'checkout/simplecheckout', `keyword` = 'simplecheckout'");
            $this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET `query` = 'account/simpleregister', `keyword` = 'simpleregister'");
        }
    }

    private function alterTable($table, $fields) {
        $fields[] = 'metadata';

        $tmp = array();
        $existFields = $this->getColumnsFrom($table);

        foreach ($fields as $field) {
            if (!in_array(strtolower($field), $existFields)) {
                $tmp[] = 'ADD `' . $field . '` TEXT NULL';
            }
        }

        if (count($tmp) > 0) {
            $this->db->query('ALTER TABLE `' . DB_PREFIX . $table . '` ' . implode(',', $tmp));
        }
    }

    private function getColumnsFrom($table) {
        $query = $this->db->query('SHOW COLUMNS FROM ' . DB_PREFIX . $table);

        $result = array();

        foreach ($query->rows as $column) {
            if (empty($column['Key'])) {
                $result[] = strtolower($column['Field']);
            }
        }

        return $result;
    }
}