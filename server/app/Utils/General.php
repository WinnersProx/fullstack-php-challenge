<?php

use Symfony\Component\Routing\Matcher\UrlMatcher;
use Symfony\Component\Routing\Exception\ResourceNotFoundException;
use Symfony\Component\HttpFoundation\Request;

function matchRoutes($context, $routes, Request $baseRequest) {
    try {
        $matcher = new UrlMatcher($routes, $context);
        $params = $matcher->match($context->getPathInfo());

        $controllerClass = $params['_controller'];
        $controllerAction = $params['method'];

        return (new $controllerClass())->$controllerAction($params);
    }
    catch(ResourceNotFoundException $e) {
        echo $e->getMessage();
    }
}

function jsonResponse(array $data, int $statusCode = 200) {
    header('Content-Type: application/json; charset=utf-8');
    http_response_code($statusCode);

    echo json_encode($data);

    exit();
}


function actionResponse (string $message, int $statusCode = 200): void
{
    $data = [
        'success' => (bool) $statusCode < 400,
        'message' => $message
    ];

    jsonResponse($data, $statusCode);
}

function formatReportsData(array $reports) {
    return array_map(function ($item) {
        $item['payload'] = json_decode($item['payload']);
        $item['reference'] = [
            'referenceId' => $item['referenceId'],
            'referenceType' => $item['reference']
        ];

        unset($item['referenceId']);

        return $item;
    }, $reports);
}