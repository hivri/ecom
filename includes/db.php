
<?php
$con = mysqli_connect(
    "mysql.railway.internal", // host
    "root",               // username
    "QJXnpAZMLHKhtLLgUfVIBThiDNQzGQkn",                // password
    "railway",               // database name
    3306                         // port
);

// Check connection
if (mysqli_connect_errno()) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
