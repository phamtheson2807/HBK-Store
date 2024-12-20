<?php
session_start();
define('DB_HOST','mysql:host=127.0.0.1;dbname=thoitrang;charset=utf8');
define('DB_USER','root');
define('DB_PASS','');
class database{
    private $host = DB_HOST;
    private $user = DB_USER;
    private $pass = DB_PASS;
    private $connect;

    public function __construct(){
        $this->connect = new PDO($this->host,$this->user,$this->pass);
    }

    //$sql truyen cau lenh truy van
    public function select($sql){
        $select = $this->connect->prepare($sql);
        $select->execute();
        $post = $select->fetchAll();
        return $post;
    }
    
    public function execute($sql){
        $query = $this->connect->prepare($sql);
        $query->execute();
    }
} 
?>