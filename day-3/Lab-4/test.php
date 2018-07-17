<?php
$servername = "localhost";
$username = "root";
$password = "";
$databasename="aswin";
$conn=mysqli_connect($servername, $username, $password, $databasename);
$query1="CREATE TABLE client(id INT(11),
type ENUM('f','j'),suspended TINYINT(1),level VARCHAR(45),
connection_type_id INT(11),client_info_id INT(11),PRIMARY KEY(id),
FOREIGN KEY(connection_type_id) REFERENCES connection_type(id),
FOREIGN KEY(client_info_id) REFERENCES client_info(id))";
$query2="CREATE TABLE client_info(id INT(11),name VARCHAR(45),
surname VARCHAR(45),email VARCHAR(45),telephone VARCHAR(45),
pk VARCHAR(45),address VARCHAR(45),registered VARCHAR(45),
city_id INT(11),PRIMARY KEY(id),FOREIGN KEY(city_id) REFERENCES city(id))";
$query3="CREATE TABLE city(id INT(11),title VARCHAR(45),
postcode VARCHAR(45),PRIMARY KEY(id))";
$query4="CREATE TABLE web_history(id INT(11),client_id INT(11),
url INT(11),time_visited VARCHAR(45),PRIMARY KEY(id),
FOREIGN KEY(client_id) REFERENCES client(id))";
$query5="CREATE TABLE connection_type(id INT(11),bw_up INT(11),
bw_down INT(11),description VARCHAR(45),price DECIMAL(10,0),PRIMARY KEY(id))";
$query6="CREATE TABLE bill(id INT(11),client_id INT(11),
period_from INT(11),period_to VARCHAR(45),is_paid TINYINT(1),
PRIMARY KEY(id),FOREIGN KEY(client_id) REFERENCES client(id))";
mysqli_query($conn, $query3);
mysqli_query($conn, $query5);
mysqli_query($conn, $query2);
mysqli_query($conn, $query1);
mysqli_query($conn, $query4);
mysqli_query($conn, $query6);
