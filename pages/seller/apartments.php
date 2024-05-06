<?php
    $pageTitle = 'sample name';
    include_once '../component/inFileHeader.php';
    include_once '../component/sellerHeader.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../styles/apartment.css">
    <script src="../../scripts/sideBar.js"></script>
</head>
<body>
<div class="dashboard-body flex">
    <div class="side-bar">
        <a href="./apartments.php">
            <div class="function-card apartments margin-y-10 flex flex-vertical-center flex-gap-y-10">
                <i class="ri-home-2-line"></i>
                <p>Apartments</p>
            </div>
        </a>
        <a href="./meetings.php">
            <div class="function-card meetings margin-y-10 flex flex-vertical-center flex-gap-y-10">
                <i class="ri-calendar-2-line"></i>
                <p>Meetings</p>
            </div>
        </a>
    </div>
    <div class="body-content w-100 margin-y-50">
        <div class="container">
            <a href="add-apartment.php" class="blue-btn">Add New Apartment</a>
            <br><br>
            <table class="w-100">
                <tr>
                    <th>Apartment Id</th>
                    <th>City</th>
                    <th>Price</th>
                    <th>Apartment Function</th>
                </tr>
                <?php
                    require '../../config/db.php';

                    $query = 'SELECT * FROM apartment';
                    $result = $conn->query($query);
                    
                    if($result->num_rows > 0)
                    {
                        while($row = $result->fetch_assoc())
                        {    ?>                   
                            <tr>
                                    <td><?php echo $row['apartment_ID']; ?></td>
                                    <td><?php echo $row['apartment_city']; ?></td>
                                    <td><?php echo $row['apartment_cost']; ?></td>
                                    <td><button name='btnDel' id="btnDel"><a class="orange-btn" href="./delete-apartment.php?apartmentId='<?php echo $row['apartment_ID']?>'">Delete</a></button></td>
                            </tr>
                            <?php
                        }
                    }    
                    else
                    {
                        echo '</table><p>Someting went wrong</p>';
                    }
                        
                ?>
            </table>
        </div>
    </div>
</body>
</html>

<script src="../../scripts/sideBar.js"></script>