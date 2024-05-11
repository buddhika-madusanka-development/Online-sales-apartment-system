<?php
   require './db.php';
   
    if(isset($_POST['btnDel']))
    {
        $apartmentId = $_GET['apartmentId'];
        $sqlD = "DELETE FROM apartment WHERE apartment_ID = '$apartmentId'";
        $resultD = $conn -> query($sqlD);

        if($resultD)
            {
                echo "<script>";
                echo "alert('Deleted successfully')";
                echo "</script>";
                
            }
            else
            {
                echo "<script>";
                echo "alert('Error!')";
                echo "</script>";
            }
    }
?>