<?php

require './db.php';

$agent_id=$_POST["aid"];
$user_id=$_POST["uid"]; 
$agent_NIC=$_POST["anic"];
$agent_phone_number=$_POST["anum"];
$agent_agency=$_POST["aagency"];
$agent_experience_year=$_POST["ayear"];
$success_project_count=$_POST["acount"];
$customer_count=$_POST["ccount"];
$agent_cover_img=$_POST["aimg"];
$agent_short_description=$_POST["sdescription"];
$agent_description=$_POST["adescription"];
$agent_status=$_POST["astatus"];


$sql="INSERT INTO agent  VALUES ('$agent_id','$user_id','$agent_NIC','$agent_phone_number','$agent_agency','$agent_experience_year','$success_project_count','$customer_count','$agent_cover_img','$agent_short_description','$agent_status')";

if($con->query($sql)){

    echo"Insert successful";
}

    else{
        echo "error".$con->error;

    }

  $con->close();



?>