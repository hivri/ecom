<?php

// Connection string for PostgreSQL
$conn_string = "host=dpg-cvvbdjje5dus73bbcmh0-a 
                port=5432 
                dbname=estore_78rg 
                user=estore_78rg_user 
                password=DbGZwf9Fu0gw6E4eECc35IyPEagYF97L";

// Connect to PostgreSQL
$con = pg_connect($conn_string);

// Check connection
if (!$con) {
    die("Connection failed: " . pg_last_error());
}

?>
