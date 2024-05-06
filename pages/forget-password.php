<?php
    include './component/head.php';
    include './component/header.php';
?>
<head>
  <link rel="stylesheet" href="../styles/login.css">
</head>
    <div class="forget-password">
        <form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST">
            <fieldset>
                <h2>Reset Password</h2>
                <label for="user">Username</label><br>
                <input type="email" name="user"><br><br>
                <label for="newpw">New Password</label><br>
                <input type="password" name="newpw"><br><br>
                <label for="conpw">Confirm Password</label><br>
                <input type="password" name="conpw"><br><br>
                <input type="submit" class="orange-btn" value="Reset Password" id="reset" name="btnReset" >
            </fieldset>
        </form>
    </div>   

    <?php
        require '../config/db.php';

        if(isset($_POST['btnReset']))
        {
            $user = $_POST['user'];
            $password_new = $_POST['newpw'];
            $confirm_pasword = $_POST['conpw'];

            if($password_new == $confirm_pasword){
                $sqlU = "UPDATE users SET user_password = '$password_new' WHERE user_mail = '$user'";
                $results = $conn->query($sqlU);

                if($conn->query($sqlU))
                {
                    echo "<script>";
                    echo "alert('Updated successfully')";
                    echo "</script>";
                }
                else
                {
                    echo "<script>";
                    echo "alert('Error!')";
                    echo "</script>";
                }
            }
       
        }
        
        $conn->close();
    ?>
    
<?php
    include './component/footer.php';
?>