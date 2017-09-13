<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use Illuminate\Database\Query\Builder;

class HomeController {

    protected $view;
    protected $db;

    public function __construct($view,$db) {
        $this->view = $view;
        $this->db = $db;
    }

    public function hello(Request $request, Response $response,$args) {
        //var_dump($args);
        $data= $widgets = $this->db->table('emp')->get();
        var_dump($data);
        return $this->view->render($response, 'home/profile.php', [
            "name" => "Michael"
        ]);
    }
}