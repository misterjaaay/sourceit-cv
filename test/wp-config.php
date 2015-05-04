<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
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
define('DB_NAME', 'cv');

/** MySQL database username */
define('DB_USER', 'jay');

/** MySQL database password */
define('DB_PASSWORD', 'jay1');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         '&vu_>Qa5N=O@ph;QYmmI^-58kPq}wvnY_pz}M5P%r1^JQHKh(MN8=<>YGB1h86kA');
define('SECURE_AUTH_KEY',  '6f#XaIu,G(b=/wkhMy)v(E?uF-#zH_hmCcjM3qgcv~O23I46*/h+2y{fbi^Mc1O3');
define('LOGGED_IN_KEY',    '^K9jSeN`GcNRV@l/7c&qV`d)J~,H|zu:]A7ucG6./@Q}K6m2,X_^C~FXa?;2ys2g');
define('NONCE_KEY',        'u65xRjqFR B=kz>SAb%$;bv/dI{-:lR_QhHDm;AFUN)_s=1vzFOy?J,@>wEwqh&U');
define('AUTH_SALT',        '+S.^YasvY$PJ}||AU8}gE)w IAEVM8QKP`B!I2]LkjLL~$J]-D4F0JdTAQ1TavV|');
define('SECURE_AUTH_SALT', 'lrTx&6-#PZ@$.5?;!FEq:cVmUZ:<$|/pR@.+K.$7EhzW=<R,^T[&]Eo8z]Q`]B5+');
define('LOGGED_IN_SALT',   '~GYE3sZ1n>5MrP{8-}}fYhFt^y-7T3=LmY`mav4n:2^?T:74&+LbA9W6_eQVnS2I');
define('NONCE_SALT',       '9( cnk-QBj9eLZ}B|2p4Y@ydz2qEMl.uS[d-s#8RsRSCXsh~{[:N8?mO5GkYzRdf');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'cv_';

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
