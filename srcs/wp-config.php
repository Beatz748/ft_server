<?php
 /**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'oE4g+%r{X93a!^QoO+Ua(37yP|F/[C_%G3E9GYB>)&w)uEVardD6VvM+/PqY]^Z~');
define('SECURE_AUTH_KEY',  'kmwA%_8Va P+nH=OIE9uXy&OB@c$c-U12P}Ezw`.Ou3^9OR -D EoGXwiXq2+_>1');
define('LOGGED_IN_KEY',    'u,Y+r#4<1 33hdk4 xvt=9ph^ W0iPA]cq#A<_,MGLZCjHY-D|6;e0duHi=A??FB');
define('NONCE_KEY',        '=3H<_^ei{1{s]M1vG4/zo.v=h-*!?9<;f kkalaIkA-o@^b2@7-<8`V=SezAsQ8(');
define('AUTH_SALT',        '`(%+Wn+fPblX4p7-|`CKmEYn+hR)nT@.:4:6N+y:]wZ,w{h{B,|$&LI0pO;3/2:w');
define('SECURE_AUTH_SALT', 'T`^!PHwSoCwFG+`f-i@C^+3]/%U&$[%tuD1e-Ujoj7Kc~hUmU0-t3b`lPS(En=*]');
define('LOGGED_IN_SALT',   'M<5Vubb-Pg1(+J#;b+}RS--]SQU%+-#3)-YSvD#eL Av(IlX+S#xS|=*LZPu{Nt@');
define('NONCE_SALT',       'IatR`) kkUB>tHIlHc:ae8IcX<6q[IFAsBRlmHorV-Qt&.;fL{9o@|(6Y1voi%xx');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
