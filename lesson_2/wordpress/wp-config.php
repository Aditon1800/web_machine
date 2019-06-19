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
define( 'AUTH_KEY',         'gF-&2~r>S/cTO@8Tj4ZI]@1<H-,r}Vgk(sGM:dWuc?bw_Ce+n;5~rLIxsVe#|,5u' );
define( 'SECURE_AUTH_KEY',  '&crYS=B*=fxVt }G#Ek>]l=-_<IpSPVA3sK^ a{l@1MteDln+x77xr[*+?!D)&0F' );
define( 'LOGGED_IN_KEY',    'pC:xrK2kf[%~|AcYaQf,P/sO`)H:`{#9Rew`faw^`fCX52~:nWF{yXVuc~)3D!/>' );
define( 'NONCE_KEY',        'q1,EMAg<#-f,lYoY!:r4(CpeJ;*hgp,i)z*{7g`sS~-8^3S+<Q5T|)^[B:2}RO_^' );
define( 'AUTH_SALT',        'YBc(T?cS^fQ3)WTD.bX+6gJ)5~}%Qg<8.Fo /3yB{uELCV(/:Vi.``Hcz.Wm@p(g' );
define( 'SECURE_AUTH_SALT', 'E3XvMPwc+n}g5lz#dsZ`{S=!zJk(b:X*nK,C:U#eL$>9LTDkrY4Dg#)d pqYv3}h' );
define( 'LOGGED_IN_SALT',   'E_kl1Q9vGwfbN_xc:=Dt$l6#stoP{{tP`?/0uAuH-pp_?g>f,V~-]]vgy.hQ-PPl' );
define( 'NONCE_SALT',       '-.{2hf<61PQvl+)J2/p1:RJif;.WM@h!Qs8Yy44l@!7RUj;2&#1*lTrL4}TU>t&G' );

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

define('FS_METHOD', 'direct');
