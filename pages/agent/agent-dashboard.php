<?php
    include '../component/infilehead.php';
    include '../component/header.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <style>
    table {
        border-collapse: separate;
        border-spacing: 0 10px;
        width: 100%;
    }

    th, td {
        padding: 12px;
        text-align: left;
    }

    th {
        background-color: var(--primary-color, #0047AB);
        color: black;
        padding-left: 50px;
    }

    td {
        background-color: #f9f9f9;
        overflow: hidden;
        text-overflow: ellipses;
        padding: 50px 0;
        white-space: nowrap;
    }

    .flexible-column {
        white-space: normal;
        word-wrap: break-word;
    }

    .btn {
        padding: 8px 16px;
        border: 1px solid transparent;
        border-radius: 5px;
        text-decoration: none;
        color: #fff;
        font-weight: bold;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    .btn-edit {
        background-color: #4CAF50;
        border-color: #4CAF50;
    }

    .btn-edit:hover {
        background-color: #45a049;
    }

    .btn-delete {
        background-color: #f44336;
        border-color: #f44336;
    }

    .btn-delete:hover {
        background-color: #d32f2f;
    }
    </style>
</head>
<body>
    <div style="margin:  50px auto;" class="container">

        <h2 style = "margin-bottom: 20px;">Contact Us Messages</h2>
        <table>
            <thead>
                <tr>
                    <th>User Id</th>
                    <th>Applicant Name</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
    
                    require '../../config/db.php';
    
                    $query = "SELECT * FROM request";
                    $result = $conn -> query($query);
                    
                    if($result){
                        $rowCount = mysqli_num_rows($result);
                        
                        if($rowCount > 0){
                            while($row = mysqli_fetch_assoc($result)){
                                $userId = $row['user_id'];
                                $userRequest = "SELECT * FROM users WHERE user_ID = '$userId'";
    
                                $userResult = $conn -> query($userRequest);
                                $userRowCount = mysqli_num_rows($userResult);
    
                                $userRow = mysqli_fetch_assoc($userResult);
    
                                $userFirstName =  $userRow['user_first_name'];
                                $userLastName =  $userRow['user_last_name'];
    
                                ?> 
                                    <tr>
                                        <td><?php echo $row['user_ID'] ?></td>
                                        <td class="flexible-column"><?php echo $userFirstName." ".$userLastName ?></td>
                                        <td>
                                            <a class="btn btn-edit" href="../config/request-accept.php?userId=<?php echo $userId ?>">approve</a>
                                            <a class="btn btn-delete" href="../config/delete-request.php?userId=<?php echo $userId ?>">Delete</a>
                                        </td>
                                    </tr>
                                <?php
    
                            }
                        }
                    }
                ?>
            </tbody>
        </table>
    </div>
</body>
</html>