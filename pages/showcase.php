<?php
$pageTItle = 'bla blaaaaaaaa';
include './component/head.php';
include './component/header.php';

if (isset($_GET['apartment_type'])) {
    $apartmentType = $_GET['apartment_type'];
}
?>

<head>
    <link rel="stylesheet" href="../styles/showcase.css">
</head>

<body>
    <div id="search">

        <form action="showcase.php" method="post">

            <div class="con">
                <label for="city">City</label>
                <select name="city" id="City">
                    <option value="colombo">Colombo</option>
                    <option value="kandy">Kandy</option>
                    <option value="kurunegala">Kurunegala</option>
                    <option value="galle">Galle</option>
                    <option value="matara">Matara</option>
                </select>
            </div>

            <div class="con">
                <label for="price">Price Range</label>
                <input type="text" id="price" placeholder="Max Price">
            </div>

            <div class="con">
                <label for="count">Person count</label>
                <select name="count" id="person_count">
                    <option value="1">1 Person</option>
                    <option value="2">2 Person</option>
                    <option value="3">3 Person</option>
                    <option value="4">4 Person</option>
                    <option value="5">5 Person</option>
                </select>

            </div>

            <div class="con">
                <label for="bedrooms">Show more</label>
                <select name="bedrooms" id="bedrooms">
                    <option value="any">Any</option>
                    <option value="1">1+ Rooms</option>
                    <option value="2">2+ Rooms</option>
                    <option value="3">3+ Rooms</option>
                    <option value="4">4+ Rooms</option>
                    <option value="5">5+ Rooms</option>
                </select>

            </div>

            <button type="submit" name="search-submit" id="search-submit" onclick="display()">Search</button>


        </form>

    </div>

    <div class="container apartment-cards">

        <?php
        require '../config/db.php';

        $query = "SELECT * FROM apartment";
        $result = $conn->query($query);
        $rowCount = mysqli_num_rows($result);


        $searchall = "SELECT * FROM apartment";
        $resulltall = $conn->query($searchall);

        while ($row = $resulltall->fetch_assoc()) {
        ?>

            <div class="apartment-card">
                <div class="image">
                    <img src="../sources/apartment/<?php echo $row['apartment_image']?>" alt="">
                </div>
                <div class="apartment-details flex flex-space-between">

                    <div class="apartment-details">
                        <h3><?php echo $row['apartment_name'] ?></h3>
                        <p><?php echo $row['apartment_type'] ?></p>
                    </div>
                    <div class="apartment-price">
                        <h3><?php echo $row['apartment_cost'] ?></h2>
                    </div>
                </div>
                <a href="./single-apartment.php?apartmentId='<?php echo $row['apartment_ID']?>'">More Details</a>
            </div>

        <?php
        }

        // if(isset($_POST['search-submit']))
        // {
        //     $city = $_POST['city'];
        //     $price = $_POST['price'];
        //     $person_count = $_POST['count'];
        //     $bedrooms = $_POST['bedrooms'];

        //     $searchq = "SELECT * FROM apartment WHERE apartment_city='$city', apartment_cost='$price', apartment_member_count='$person_count', apartment_number_rooms='$bedrooms'";
        //     $resullts = $con->query($searchq);

        //     while($row=$resullts->fetch_assoc())
        //     {
        //         echo "<div class='results-div2'>";
        //         echo $row["apartment_description"];
        //         echo "</div>";
        //     }

        // }
        ?>
    </div>

    <script src="../scripts/showcase.js"></script>

</body>

</html>