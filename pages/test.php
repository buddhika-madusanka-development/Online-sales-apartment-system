<?php
    include '../config/db.php';

    $query = "SELECT * FROM agents";
    $result = mysqli_query($conn, $query);
    $rowCount = mysqli_num_rows($result);

    while($row = mysqli_fetch_assoc($result)){
        echo "<p>".$row['agent_phone_number']."</p>";
    }