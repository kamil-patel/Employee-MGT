<?php

$base_url = $_SERVER['DOCUMENT_ROOT'] . "/kamil-patel/";
include_once $base_url . 'dbop/connection.php';

class User {

    public $objDB;

    public function __construct() {
        $this->objDB = new connection();
    }

    public function select() {
        $sql = "SELECT user.*,user_profile.fname,user_profile.lname,user_profile.contact"
                . " FROM user"
                . " JOIN user_profile ON user_profile.user_id = user.user_id";
        $this->objDB->connect();
        return mysqli_query($this->objDB->con, $sql);
    }

    public function insert($Email, $password) {
        $sql = "INSERT INTO user(Email.password) VALUES('$Email','$password')";
        $this->objDB->connect();
        mysqli_query($this->objDB->con, $sql);
        return mysqli_insert_id($this->objDB->con);
    }

    public function userProfileAdd($user_id, $fname, $lname, $contact) {
        $sql = "INSERT INTO user_profile(user_id,fname,lname,contact) VALUES ('$user_id','$fname','$lname','$contact')";
        $this->objDB->connect();
        return mysqli_query($this->objDB->con, $sql);
    }

}
