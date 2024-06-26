<div class="header bg-primary">
    <div class="container h-min-80 flex flex-space-between flex-vertical-center">
        <div class="logo-section flex flex-space-between flex-vertical-center">
            <a href="./home.php"><span class="logo">FindPlace</span></a>
            <i class="ri-menu-line menu-icon"></i>
        </div>

        <div class="apartment-link-set link-set link-set-1 link-set-active flex flex-gap-y-20">
            <a href="./showcase.php" class="nav-link rent">Rent Apartment</a>
            <a href="./showcase.php" class="nav-link buy">Buy Apartment</a>
            <a href="./agents.php" class="nav-link find">Find Agent</a>
        </div>
        <div class="control-login-link-set link-set link-set-2  link-set-active flex flex-gap-y-20 flex-vertical-center">
            <a href="./contact-us.php" class="nav-link contact">Contact Us</a>
            
            <?php
                if(isset($_SESSION['user-id'])){ ?>
                    <a href="./agents.php" class="nav-link find">Dashboard</a>
                <?php }else{?>                    
                    <a href="./registration.php" class="nav-link login">Login | Register</a>
                    <a href="./Agent-request.php" class="  border-btn">Become Agent</a>
                <?php }
            ?>
        </div>
    </div>
</div>

<script src="../scripts/header.js" def></script>