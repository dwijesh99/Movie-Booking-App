<?php
	define("URL", "http://localhost/movie-ticket-booking-website-php-and-mysql/");
	define("VIEW", "views/");
    define("PUBLIC_PATH", URL . "public/");
	define("CSS", URL . "public/css/");
	define("JS", URL . "public/js/");
	define("IMG", URL . "public/img/");

    define("ADMIN_VIEW", VIEW . "admin/");
    define("ADMIN_CSS", URL . "public/admin/css/");
    define("ADMIN_JS", URL . "public/admin/js/");
    define("ADMIN_IMG", URL . "public/admin/img/");
    define("ADMIN_VENDOR", URL . "public/admin/vendors/");
	
	define("DB_HOST", "localhost:3307");
	define("DB_USER", "root");
	define("DB_PASS", "");
	define("DB_NAME", "moviepoint");

    /* setup stripe secret and publishable keys */
    define("STRIPE_SECRET_KEY", "sk_test_51JYQlJSEemlF1DTU6WTIvTZ3UtQCIPuVW5VmmtJTgBvCkcnKuKPr2poBo9DK7PixToUgTL3s04dMLf14OOad6biR00QTy5LOib");
    define("STRIPE_PUBLISHABLE_KEY", "pk_test_51JYQlJSEemlF1DTUf9cpiL0qjV4n0YQmaTgvZEmX1UQ1oZwf6JkC6nMzBnTK7g3PApeVBQ7wN4uiDq9hgOrnRzkq00dKIyu0ih");
    
?>