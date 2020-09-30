<?php

$base_url = $_SERVER['DOCUMENT_ROOT'] . "/kamil-patel/";
include_once $base_url . 'dbop/connection.php';

class Admin {

    public $objDB;

    public function __construct() {
        $this->objDB = new connection();
    }

    public function login($username, $password) {
        $sql = "SELECT * FROM admin where username = '$username' AND password = '$password'";
        $this->objDB->connect();
        return mysqli_query($this->objDB->con, $sql); 

}
}