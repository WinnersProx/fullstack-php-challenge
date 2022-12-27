<?php

require_once './vendor/autoload.php';
require_once 'config/database.php';
require_once 'config/cors.php';
require_once './routes.php';


global $routes;
global $context;
global $baseRequest;

// Match all routes
matchRoutes($context, $routes, $baseRequest);
