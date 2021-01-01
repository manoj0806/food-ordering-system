<?php 
class Contact{
    private $host="localhost";
    private $user="root";
    private $pass="";
    private $db="foodsys";
    public $mysqli;
    
    public function __construct() {
        return $this->mysqli=new mysqli($this->host, $this->user, $this->pass, $this->db);
    }
    
    public function feedback($data){
        $customer=$data['customer'];
        $email=$data['email'];
        $dish=$data['dish'];
        $phone=$data['phone'];
        $message=$data['message'];
        $q="insert into feedback set customer='$customer',dish='$dish',email='$email', phone='$phone', message='$message'";
       $data= $this->mysqli->query($q);
    }
}



?>