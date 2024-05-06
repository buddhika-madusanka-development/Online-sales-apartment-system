<?php

    require_once './db.php';

    $date = $_POST['meeting-date'];
    $time = $_POST['meeting-time'];
    $userId = 2;

    echo $date ."<br>" . $time;

    $query = "INSERT INTO meeting (user_id, meeting_date, meeting_time) VALUES ('$userId', '$date', '$time')";
    $result = mysqli_query($conn, $query);

    if($result){
        echo "<script>";
        echo "alert('Meeting successfull')";
        echo "</script>";

        header('location:../pages/seller/add-meeting.php');
    }
    
