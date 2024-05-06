<?php
$pageTitle = 'register';
require './component/head.php';
require './component/header.php';
?>

<link rel="stylesheet" href="../styles/registration.css">

<body>

    <div class="body-container">
        <!-- Left Part -->
        <div class="left-part">

        </div>

        <!-- Right Part -->
        <div class="right-part">
            <div class="wrapper">
                <!-- <h2>Registration</h2> -->
                <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">

                    <?php
                    // print_r($_POST)

                    if (isset($_POST["submit"])) {
                        $firstName = $_POST["FirstName"];
                        $lastName = $_POST["lastName"];
                        $email = $_POST["email"];
                        $password = $_POST["password"];
                        $repeatPassword = $_POST["repeatPassword"];
                        $file_name = $firstName."_".$lastName;
                        // $firstname = $_POST("firstname"); checkbox

                        $passwordHash = password_hash($password, PASSWORD_DEFAULT);

                        $errors = array();

                        if (empty($firstName) || empty($lastName) || empty($email) || empty($password) || empty($repeatPassword)) {
                            array_push($errors, "All fields are required");
                        }
                        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                            array_push($errors, "Email isnt valid");
                        }
                        if (strlen($password) < 8) {
                            array_push($errors, "Password must atleast 8 chatacters long");
                        }
                        if ($password !== $repeatPassword) {
                            array_push($errors, "Password does not match");
                        }

                        require_once "../config/db.php";

                        $sql = "SELECT * FROM users WHERE user_mail = '$email'";
                        $result = mysqli_query($conn, $sql);
                        $rowCount = mysqli_num_rows($result);

                        if ($rowCount > 0) {
                            array_push($errors, "Email already exists !");
                        }
                        if (count($errors) > 0) {
                            foreach ($errors as $error) {
                                echo "<div class='alert'>$error</div>";
                            }
                        } else {
                            //send data to the server

                            $sql = "INSERT INTO users (user_first_name, user_last_name, user_mail, user_password,user_profile_picture) VALUES (?, ?, ?, ?,?)";

                            $stmt = mysqli_stmt_init($conn);

                            $prepareStmt = mysqli_stmt_prepare($stmt, $sql);

                            if ($prepareStmt) {
                                mysqli_stmt_bind_param($stmt, "sssss", $firstName, $lastName, $email, $passwordHash,$file_name);
                                mysqli_stmt_execute($stmt);
                                echo "<div class='alert alert-sucess'>You are registerd sucessfully. </div>";
                            } else {
                                die("something went wrong");
                            }
                        }
                    }
                    ?>
                    <div class="input-box">
                        <input type="text" class="form-control" name="FirstName" placeholder="first name">
                    </div>
                    <div class="input-box">
                        <input type="text" class="form-control" name="lastName" placeholder="Last name">
                    </div>
                    <div class="input-box">
                        <input type="text" class="form-control" name="email" placeholder="Email address">
                    </div>
                    <div class="input-box">
                        <input type="text" class="form-control" name="password" placeholder="Create password">
                    </div>
                    <div class="input-box">
                        <input type="text" class="form-control" name="repeatPassword" placeholder="Confirm password">
                    </div>
                    <!-- <div class="terms">
                        <input type="checkbox">
                        <h3>Lorem ipsum dolor sit amet consectetur adipisicing.</h3>
                    </div> -->
                    <div class="input-box button">
                        <input type="submit" value="Register now" name="submit">
                    </div>
                    <div class="text">
                        <p>Already have an Account? <a href="./login.php">Login now</a> </p>
                        <p>Need to become seller? <a href="./RegisterSeller.php">Seller Registration</a> </p>
                    </div>
                </form>
            </div>
        </div>
</body>

</html>