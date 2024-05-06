<?php
$pageTitle = "Home";
require './component/head.php';
require './component/header.php';
?>

<head>
    <link rel="stylesheet" href="../styles/showcase.css">
</head>

<body>

    <div style="height: 600px; background-image: linear-gradient(to right, white, transparent), url('../sources/home.jpg'); background-repeat: no-repeat; background-position: center; background-size: cover; margin-bottom: 50px;" class="home-banner flex flex-vertical-center">
        <div class="container">
            <h1 class="w-60">Beyond walls and windows – discover the art of living</h1>
            <p class="w-50 margin-y-20">Beyond walls and windows” encapsulates the essence of a home transcending mere structure. It’s where life’s moments are cherished, personal style is expressed, and comfort is paramount. It’s not just living; it’s experiencing daily life as an art form, surrounded by beauty and inspired design.</p>
            <a class="blue-btn margin-y-20" href="./agents.php">Find An Agent</a>
        </div>
    </div>


    <div class="container">
        <h2>Explore trusted apartments</h2>
    </div>
    <div class="container apartment-cards-home">


        <?php
        require '../config/db.php';

        $query = "SELECT * FROM apartment LIMIT 4";
        $result = $conn->query($query);
        $rowCount = mysqli_num_rows($result);


        $searchall = "SELECT * FROM apartment";
        $resulltall = $conn->query($searchall);

        while ($row = $resulltall->fetch_assoc()) {
        ?>

            <div class="apartment-card">
                <div class="image">
                    <img src="../sources/apartment/<?php echo $row['apartment_image'] ?>" alt="">
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
                <a href="./single-apartment.php?apartmentId='<?php echo $row['apartment_ID'] ?>'">More Details</a>
            </div>

        <?php
        }
        ?>
    </div>


    <div style="margin: 80px auto;" class="about-us container flex flex-vertical-center">
        <img class="w-40" src="../sources/hand shak.jpg" alt="">
        <div style="margin-left: 50px;" class="text-content-area">
            <h2 class = "margin-y-20">Who we are..</h2>
            <p style="margin-bottom: 50px;;" class = "w-80">At Skyline Sanctuaries, we believe that finding the perfect home is not just a transaction—it’s a pivotal moment in one’s life. Our journey began with a simple mission: to connect individuals and families with spaces that resonate with their dreams and aspirations.

            With over a decade of experience in the real estate industry, our team of dedicated professionals has been the guiding light for countless clients, navigating them through the intricate process of home buying with ease and transparency. Our portfolio boasts a diverse range of properties, each selected with the utmost attention to detail and quality.

            We’re more than just agents; we’re architects of happiness, crafting experiences that turn houses into homes. Our commitment to excellence and personalized service has cemented our reputation as a trusted partner in the journey towards homeownership.

            At Skyline Sanctuaries, your future home awaits.

            Feel free to customize this template to better fit your agency’s unique story and values. If you need further assistance or more detailed content, let me know!</p>
            <a class="blue-btn" href="">Contact Us</a>
        </div>

    </div>

    <div class="container">
        <h2>Find a life saver</h2>
    </div>
    <div class="container">
    <div class="agent-cards margin-y-20">
        <?php

            // make connection with agent table for collect the data about agent
            $query = "SELECT * FROM agent";
            $result = mysqli_query($conn, $query);
            
            if($result){
                $rowCount = mysqli_num_rows($result);
                
                if($rowCount > 0){
                    while($row = mysqli_fetch_assoc($result)){
                        $agentId = $row['agent_ID'];
                        $userId = $row['user_ID'];
                        $agentAgency = $row['agent_agency'];
                        // $fileName = $userRow['user_profile_picture'];

                        $userQuery = "SELECT * FROM users WHERE user_ID='$userId'";
                        $userResult = mysqli_query($conn, $userQuery);

                        if($result){
                            $userRow = mysqli_fetch_assoc($userResult);
                            $userFirstName = $userRow['user_first_name'];
                            $userlastName = $userRow['user_last_name'];
                            
                            ?>
                                <!-- single agent card desing -->
                                <div class = 'agent-card margin-y-20'>
                                    <a href = './agent-profile.php?agentId=<?php echo $agentId?>&&userId=<?php echo $userId?>'>
                                        <img src="../sources/users/<?php echo $userRow['user_profile_picture']?>" alt="">
                                    </a>
                                    <div class="text-content">
                                        <h3 class = 'agent-name'><?php echo $userFirstName." ".$userlastName ?></h3>
                                        <p class = 'agency-name'><?php echo $agentAgency ?></p>
                                        <a href = './agent-profile.php?agentId=<?php echo $agentId?>&&userId=<?php echo $userId?>'>See more -></a>
                                    </div>
                                </div>
                            <?php
                            
                        }
                    }
                }
                
            }
            else{
                echo "Something went wrong";
            }
        
        ?>
    </div>
</div>

    <?php
    require './component/footer.php';
    ?>
    <script src="header.js"></script>
</body>

</html>