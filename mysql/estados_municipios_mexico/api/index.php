<?php
date_default_timezone_set('America/Mexico_City');
require 'app/lib/Slim/Slim.php';
require 'app/vendor/idiorm.php'; 


\Slim\Slim::registerAutoloader();
$config = require 'config.php';

$app = new \Slim\Slim($config["slim"]);

ORM::configure('mysql:host=localhost;dbname=codigos;charset=utf8');
ORM::configure('username', 'root');
ORM::configure('password', '12345');

// routes //
require 'app/routes/codigos.php';

$app->contentType('application/json');

// CORS headers
$app->response->headers->set('Access-Control-Allow-Origin', '*');
$app->response->headers->set('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,OPTIONS');
$app->response->headers->set('Access-Control-Allow-Headers', 'X-CSRF-Token, X-Requested-With, Accept, Accept-Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version');

$app->run();