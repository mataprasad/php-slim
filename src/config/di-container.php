<?php

$container = $app->getContainer();

$container['db'] = function ($container) {
    $capsule = new \Illuminate\Database\Capsule\Manager;
    $capsule->addConnection($container['settings']['db']);

    $capsule->setAsGlobal();
    $capsule->bootEloquent();

    return $capsule;
};
// Register component on container
$container['view'] = function ($container) {
    /*$view = new \Slim\Views\Twig('views/', [
        'cache' => false
    ]);
    
    // Instantiate and add Slim specific extension
    $basePath = rtrim(str_ireplace('index.php', '', $container['request']->getUri()->getBasePath()), '/');
    $view->addExtension(new Slim\Views\TwigExtension($container['router'], $basePath));

    return $view;
    */
    //return new Slim\Views\PhpRenderer('views/');
    //include_once 'lib/PhpRenderer.php';
    return new App\Views\PhpRenderer("layout.php",'../views/');
};
