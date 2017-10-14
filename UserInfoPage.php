<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "accounts";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT idusers2, name, gender, email, username, dob FROM users2 WHERE username= 'Rob'";
$result = $conn->query($sql);


    echo "<table><tr><th>Id</th><th>Named</th><th>Gender</th><th>Email</th><th>Username</th><th>Born</th></tr>";

    // output data of each row
    $row = $result->fetch_assoc();
    echo "<tr><td>".$row["idusers2"].
    "</th><td>". $row["name"].
    "</th><td>". $row["gender"].
    "</th><td> ".$row["email"].
    "</th><td> ".$row["username"].
    "</th><td> ".$row["dob"]."</td></tr>";
    
    echo "</table>";

$conn->close();
?>