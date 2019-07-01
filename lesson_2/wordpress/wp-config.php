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
define( 'DB_NAME', 'web_machine' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         'Ph=X-k8)d2F=c3|7<v6jpLkqenP]Nqrj%.oO6P3=}ocjJ,6EE6^QL.+mK*9{lgpY' );
define( 'SECURE_AUTH_KEY',  'j@cUBICe(:<&+eF_=@(4uSrmd9}38O|QC782${eQlQj]j26}pdWCm#UyC $$NJ3@' );
define( 'LOGGED_IN_KEY',    '(/h)O+}_lJV1W{=|I.3HNWc08Wayz,tO[rGq@q|%F2_p*XeE=V}iA]][o2K(5CC{' );
define( 'NONCE_KEY',        'D.%Of_|g3F7w} q[l eKVHDMm%2IkuQzm0HWe.F76O`!_9Fc3Gr,YeFZ&ngH?qy!' );
define( 'AUTH_SALT',        'Ne5{xYTp#|QPPObLP;^.US5=&t@T%B7 YbyiWYvv]&>6|o5gXLI14YaG{X^P%hY~' );
define( 'SECURE_AUTH_SALT', ',Vp5K_IEjumx0OhjJ@MLO4x<jYmy1._hVFb^<_e=,jXATAKdrMpBGc2_5{>|{lCq' );
define( 'LOGGED_IN_SALT',   'A  )o}?+I@Y0m]$XL&uLr}PYp3s21oH9Us_KEx(Z2;cmk6}6rprM[CH}Ds9EYZcO' );
define( 'NONCE_SALT',       '7;FvvDyR7oR|oE@Hnez,dPqUzg|7lhtr]I{d3iT6duURl~XEBy6sFE/}?zv+;7Ka' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wbm_';

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
define( 'WP_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
