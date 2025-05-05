/* <?php */
/* $con = mysqli_connect("localhost","root","","Estore"); */
/* ?> */


<?php
$con = mysqli_connect(
    "sql12.freesqldatabase.com", // host
    "sql12777116",               // username
    "h6zXiiRbLB",                // password
    "sql12777116",               // database name
    3306                         // port
);

// Check connection
if (mysqli_connect_errno()) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
