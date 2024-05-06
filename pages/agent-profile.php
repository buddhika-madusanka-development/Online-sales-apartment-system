<?php 

    include_once '../config/db.php';
    
    $agentId = $_GET['agentId'];
    $userId = $_GET['userId'];

    if(!isset($agentId)){
        header('location:./agents.php');
    }


    // get user id and select the data
    $userQuery = "SELECT * FROM users WHERE user_ID= '$userId'";
    $agentQuery = "SELECT * FROM agent WHERE agent_ID= '$agentId'";

    $userResult = mysqli_query($conn, $userQuery);
    $agentResult = mysqli_query($conn, $agentQuery);

    if($userResult){
        $userRow = mysqli_fetch_assoc($userResult);
        $agentRow = mysqli_fetch_assoc($agentResult);

        $userFirstName = $userRow['user_first_name'];
        $userlastName = $userRow['user_last_name'];
        $userMail = $userRow['user_mail'];
        $agentName = $userFirstName." ".$userlastName;

        $agentExperience = $agentRow['agent_experience'];
        $agentAgency = $agentRow['agent_agency'];
        $agentProjects = $agentRow['project_count'];
        $agentClients = $agentRow['agent_customer_count'];
        $agentShortDescription = $agentRow['agent_short_description'];
        $agentDescription = $agentRow['agent_description'];
        $agentCover = $agentRow['agent_cover_img'];

        $pageTitle = $agentName;
    }

    include_once './component/head.php';

    // include prebuil header
    include_once './component/header.php';

    $button_text = 'Contact me';
?>

<!-- agent header section. Show agent details in here -->
<div class="agent-header flex flex-vertical-center" style="
            background-image: linear-gradient(to right, white, transparent), url('../sources/users/<?php echo $agentCover ?>');
    ">
    <div class="container">
        <div class="text-content w-50">
            <h1>I am <?php echo $agentName ?></h1>
            <p><?php echo $agentCover ?></p>
            <p class="w-80  margin-y-20"><?php echo $agentShortDescription?></p>
            <a class="orange-btn" href="./agent-contact.php?agentMail='<?php echo $agentMail ?>'" >Contact Me</a>
        </div>
    </div>
</div>


<!-- agent show case with their own stats -->
<div class="container">

    <!-- agent stat showcase -->
    <div class="agent-stats">
        <div class="container flex flex-space-between flex-vertical-center h-100">
            <!-- agent stat card -->
            <div class="stat-card flex flex-vertical-center flex-gap-y-20">
                <div class="icon">
                    <i class="ri-calendar-line"></i>
                </div>
                <div class="stat-text">
                    <p class="stat-header"><?php echo $agentExperience ?> years +</p>
                    <p class="stat-sub-header">Working experience</p>
                </div>
            </div>

            <!-- agent stat card -->
            <div class="stat-card flex flex-vertical-center flex-gap-y-20">
                <div class="icon">
                    <i class="ri-home-gear-line"></i>
                </div>
                <div class="stat-text">
                    <p class="stat-header"><?php echo $agentAgency?></p>
                    <p class="stat-sub-header">currently working in</p>
                </div>
            </div>
            
            <!-- agent stat card -->
            <div class="stat-card flex flex-vertical-center flex-gap-y-20">
                <div class="icon">
                    <i class="ri-check-double-line"></i>
                </div>
                <div class="stat-text">
                    <p class="stat-header"><?php echo $agentProjects ?> +</p>
                    <p class="stat-sub-header">Successfull projectes</p>
                </div>
            </div>

            <!-- agent stat card -->
            <div class="stat-card flex flex-vertical-center flex-gap-y-20">
                <div class="icon">
                    <i class="ri-user-2-line"></i>
                </div>
                <div class="stat-text">
                    <p class="stat-header"><?php echo $agentClients ?> +</p>
                    <p class="stat-sub-header">Happy customerbase</p>
                </div>
            </div>
        </div>
    </div>

    <!-- agent details section -->
    <div class="agent-about margin-y-50">

        <h2 class="margin-y-20">Little about me</h2>
        <p class="about-me"><?php echo $agentDescription ?></p>
    </div>

</div>

<!-- Agent card details. Suggetions for more choises -->
<div class="container">
    <div class="agent-cards margin-y-50">
        <?php

            // connect with agent table and seek the data
            $query = "SELECT * FROM agents ORDER BY RAND() LIMIT 4";
            $result = mysqli_query($conn, $query);

            if($result){
                $rowCount = mysqli_num_rows($result);
                
                if($rowCount > 0){
                    while($row = mysqli_fetch_assoc($result)){
                        $userId = $row['user_id'];
                        $checkUser = "SELECT * FROM users WHERE user_id = '$userId'";
                        $userCheckResult = mysqli_query($conn, $checkUser);
                        $userRow = mysqli_fetch_assoc($userCheckResult);
        
                        $userFirstName = $userRow['user_first_name']; 
                        $userlastName = $userRow['user_last_name']; 
                        $companyName = $row['agent_agency'];
                        $fileName = $userRow['user_profile_picture'];
                        $name = $userFirstName." ".$userlastName;
                    }
                }else{
                    echo "There are no agenets to Suggest";
                }

                // agent card showcase single agent card desing
                
            }
        ?>
    </div>
</div>

<!-- footer area -->
<?php
    include_once './component/footer.php'
?>

