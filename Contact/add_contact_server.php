<?php
function adding($first_name,$last_name,$phone,$email,$date){
    $status="good";
    $conn=new mysqli("localhost","aswinmohan","qburst","contact");
    $query1="insert into data (first_name,last_name,email,phone,status,created_date) values('$first_name','$last_name','$email','$phone','$status','$date')";
    $conn->query($query1);
    echo "successfully added";
}
if(!empty($_POST)){
    $first_name=$_POST["first_name"];
    $last_name=$_POST["last_name"];
    $phone=$_POST["phone"];
    $email=$_POST["email"];
    $date=date("M d, Y");
    adding($first_name, $last_name, $phone, $email, $date);
}