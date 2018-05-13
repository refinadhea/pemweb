<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_koneksin = "localhost";
$database_koneksin = "skyperpus";
$username_koneksin = "root";
$password_koneksin = "";
$koneksin = mysql_pconnect($hostname_koneksin, $username_koneksin, $password_koneksin) or trigger_error(mysql_error(),E_USER_ERROR); 
?>