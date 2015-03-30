<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'bloggarciaparts');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'I<O1D0NG8qBpJj30EA*D[kwa-oYY%#Df3tt}(~yZKm,hw7eUeo=il_-u^:CZ:lw}');
define('SECURE_AUTH_KEY',  '<!lX#._Mp,;<H`@RGtVA-nN|{lkFgmSUg7+/GsJ)gUS+z}tZ8H,Ps-=@@iPF@74 ');
define('LOGGED_IN_KEY',    'bFx_,9obe0&L[-p:$Z^R1+@R6oc=:+SX+ZFJl(+$f{>`Ev*uygdcR8BEq>T~<]}i');
define('NONCE_KEY',        'C&<W6cTq$[U0Q]4n% p&ZBk$mV^G#`dueq[~#DzYlz+Rl7_lwH<a(4qrfDw$jtG[');
define('AUTH_SALT',        'i+yq9+aiLkc>nr7sL+t?S/_!>p07&e`%A`2q-tZhm BU`Z06ff,p+^~>:l~bb)L-');
define('SECURE_AUTH_SALT', 'jZclLVT#Sulpz,.u|QLHT+mqC9gB7Hsccyu^ cz?wlc<:>!-GzuPFb]3b/)*S7wg');
define('LOGGED_IN_SALT',   '}VDN*a|x<g+)w(5h`BQ d:|opY<Jl4-00k>EjoPwU@8fAU2HUU:Uk8+*_D%7T5JI');
define('NONCE_SALT',       'gja{hR]B|F|5V-&AB}maH]||?`@r&286wVgOflUQ_=AGl+-M]-QJ:ZrlQDClo1o|');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
