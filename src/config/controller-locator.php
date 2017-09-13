<?php
$container['controller.home'] = function($container) {
    return new HomeController($container['view'],$container['db']);
};