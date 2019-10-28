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

// ** MySQL settings ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'r+yl3Hwgf8ArRFCJY+xyINhk5/nHo10mCyNHLo09FSaFalXvh3TPMAhsij/o4vkdb3+4yXSajx5P+0kJJRQosQ==');
define('SECURE_AUTH_KEY',  'HhBVR4YGVqBGdRdYuQkowiqIq9iJzbLw14lpytbKLZxJHinX1kG98v+gxBotCzEyv0ZcI/eU8YiUl9LhHLbFLg==');
define('LOGGED_IN_KEY',    'qn2nDgo3T4QRuvZ8Nyi/MkOyGe62dxwuymYjD174ZxS4ULuKjN/Yo9Q5WMAxCS5o6zdEMPNQrjTlwV9lCVXReQ==');
define('NONCE_KEY',        'jEzJIPXrEd85OjLgxpw5c5keCOE3ZpkQigt3bI6RGaDAOnaseWZgmw/e1In6W9OmKqkJ84748UO3CSikxH1KQw==');
define('AUTH_SALT',        'VDtYY+H92F73aZIbWBFT7HEFtMz4j96hgWVi6iLmdnbgHfk6p/4jpbyaeXPLwNb/AhJ9bpKdMMj0V9rupoTkGA==');
define('SECURE_AUTH_SALT', 'maC9A0QIKZok0T05Ua0UaI8759KB3Qp2S/nYoOOGYlqsaCtCXP64ltYrtVlft/7ZBmZJ2dMQVj0y0LXkRfjWiA==');
define('LOGGED_IN_SALT',   '4pagftUF1slzJ8R0luAfrNU5o6wbpIe3SSsZN7MaFA377LqzOJBtbOpTPS3IWjSbn+AhVtOHlrK3+8oURyKc6g==');
define('NONCE_SALT',       'MX0zIv4Y8hvZJZ+doPSemA/nd+7zDvFOVO0P3IQibXkeVzLTvDH5KiK0VDEEF8FVklhw7TQrD1rnAaVztv2AWQ==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) )
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
