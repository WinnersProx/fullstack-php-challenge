<?php

use Symfony\Component\Routing\RequestContext;
use Symfony\Component\Routing\RouteCollection;
use Symfony\Component\Routing\Route;
use Symfony\Component\HttpFoundation\Request;

$routes = new RouteCollection();

$indexRoute = new Route(
    '/',
    ['_controller' => 'App\Controllers\HomeController', 'method' => 'index']
);

$reportsRoute = new Route(
    '/reports',
    ['_controller' => 'App\Controllers\ReportController', 'method' => 'index']
);

$resolveRoute =  (new Route(
    '/reports/{reportId}',
    ['_controller' => 'App\Controllers\ReportController', 'method' => 'resolve']
))->setMethods('PUT');

$blockRoute =  (new Route(
    '/reports/block/{reportId}',
    ['_controller' => 'App\Controllers\ReportController', 'method' => 'blockReport']
))->setMethods('PUT');


$routes->add('index', $indexRoute);
$routes->add('reports', $reportsRoute);
$routes->add('resolve', $resolveRoute);
$routes->add('block', $blockRoute);
// Register more routes here...

$context = new RequestContext();
$baseRequest = Request::createFromGlobals();
$context->fromRequest($baseRequest);
