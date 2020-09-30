<?php

$base_url = $_SERVER['DOCUMENT_ROOT'] . "/kamil-patel/";

class connection {

    public $hostname = "localhost";
    public $username = "root";
    public $password = "";
    public $dbname = "kamil_patel";
    public $con;

    public function connect() {
        $this->con = mysqli_connect($this->hostname, $this->username, $this->password, $this->dbname);
    }

}

