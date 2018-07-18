<?php
$search=$_POST["search"];
$conn= new mysqli("localhost","aswinmohan","qburst","contact");
$sql1="select first_name,last_name,email,phone,status,created_date from data where first_name='$search' or last_name='$search' or email='$search' or phone='$search'";
$result=$conn->query($sql1);
if($result==""){
    die("no data");
} else {
while($row=$result->fetch_assoc()){
    echo json_encode($row)."/";
}
}




/*$query = "select first_name,last_name,email,phone,status,created_date from data";


if (search term) {
    $query .= "where first_name='$search' or last_name='$search' or email='$search' or phone='$search'";
}


$page = (if page in url) ? (ge tthat value from url) ? 1;
$noOfRecords = 5;

$query .= "LIMIT ";

*/