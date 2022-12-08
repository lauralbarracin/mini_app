<?php
    ini_set('display_errors', 1); // go live have to comment this error debbugger;
    error_reporting(E_ALL); // go live have to comment this error debbugger;

    header("Access-Control_Allow_Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    require_once("config.php");

    //Return all results
    $getContent = getAll('mini_models');
    //$getContent = getSingle('tbl_marvel', 'marvel_id', '4');
    $label = "mini_id";

    if(!is_string($getContent)) {
        $result = [];
        while($conResult = mysqli_fetch_assoc($getContent)){
            $result[$conResult[$label]] =$conResult;
        }
        echo json_encode($result, JSON_PRETTY_PRINT);
    }else{
        echo $grpResult;
    }

    //Return all results
    // $grpResult = "";
    // $grpResult .= "{";
    // if(!is_string($getContent)) {
    //     //Brings back an assoc array, you can target by column name.
    //     while($conResult = mysqli_fetch_assoc($getContent)) {
    //         $jsonResult = "\"".$conResult[$label]."\"".": ".json_encode($conResult, JSON_PRETTY_PRINT);
    //         $grpResult .= $jsonResult.",";
    //     }
    //     $grpResult = substr($grpResult, 0, -1);
    //     $grpResult .= "}";
    //     echo $grpResult;
    // }else{
    //     echo "<p class=\"error\">{$getContent}</p>";
    // }

     //Return Single Result
    //$getContent = getSingle('tbl_marvel', 'marvel_id', '2');

    // if(!is_string($getContent)) {
    //     //Working object
    //     $result = [];
    //     while($conResult = mysqli_fetch_assoc($getContent)) {
    //        $result[$conResult[$label]] = $conResult;
    //     }
    //     echo json_encode($result, JSON_PRETTY_PRINT);
    // }else{
    //     //Error Message
    //     echo $getContent;
    // }


?>