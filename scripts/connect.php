<?php

    // Set up connection creds

    ini_set('display_errors', 1); // COMENT THIS WHEN YOU GO LIVE
    error_reporting(E_ALL); // COMENT THIS WHEN YOU GO LIVE

    $user = "";
    //$pass = ""; // For WAMP -- WINDOWS USERS
    $pass = ""; // For MAMP
    $url = "localhost";
    // Change the database name for each site
    $db = "laura978_fip";

    // Connect to db
    //$link = mysqli_connect($url, $user, $pass, $db, "8888"); //Mac
    $link = mysqli_connect($url, $user, $pass, $db); //PC

    // Check our connection
    if(!$link) {
        error_log("Connection error: " . mysqli_connect_error());
    }


?>