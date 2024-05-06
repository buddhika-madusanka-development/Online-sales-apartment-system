<?php
    $pageTitle = 'Agent Request';
    include './component/head.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>agent</title>
    <link rel="stylesheet" href="../styles/agent-requeest.css">
</head>

<body>
    <?php
        include './component/header.php';
    ?>
    <div class="body-cotainer">
        <div>
            <img src="../sources/agent-request.jpg" alt="sample pic">
        </div>

        <div class="wrapper">
            <form action="<? $_SERVER['PHP_SELF'] ?>" method="post">

                <?php
                if (isset($_POST["submit"])) {
                    $firstName = $_POST["FirstName"];
                    $lastName = $_POST["lastName"];
                    $NIC = $_POST["NIC"];
                    $email = $_POST["email"];
                    $phone = $_POST["phone"];
                    $company = $_POST["company"];
                    $experience = $_POST["experience"];
                    $c_count = $_POST["c_count"];
                    $password = $_POST["password"];
                    $fileName = $firstName . "_" . $lastName . '.jpg';
                    $coverName = $firstName . "_" . $lastName . '_Cover.jpg';

                    $passwordHash = password_hash($password, PASSWORD_DEFAULT);


                    require_once "../config/db.php";
                    $sql = "INSERT INTO users(user_first_name, user_last_name, user_mail, user_password,user_profile_picture) VALUES (?, ?, ?, ?,?)";

                    $stmt = mysqli_stmt_init($conn);

                    $prepareStmt = mysqli_stmt_prepare($stmt, $sql);

                    if ($prepareStmt) {
                        mysqli_stmt_bind_param($stmt, "sssss", $firstName, $lastName, $email, $password, $fileName);
                        mysqli_stmt_execute($stmt);
                        echo "<div class='alert alert-sucess'>You are registerd sucessfully. </div>";
                    } else {
                        die("something went wrong");
                    }

                    $query = "SELECT * FROM users WHERE user_mail = '$email'";
                    $result = mysqli_query($conn, $query);
                    $row = mysqli_fetch_assoc($result);
                    $userId = $row['user_id'];

                    if ($result) {
                        $sql = "INSERT INTO reqagent(user_id,agent_NIC, agent_phone_number, agent_agency, agent_experience, agent_customer_count, agent_cover_img) VALUES (?, ?, ?, ?, ?,?, ?)";

                        $stmt = mysqli_stmt_init($conn);
                        $prepareStmt = mysqli_stmt_prepare($stmt, $sql);

                        if ($prepareStmt) {
                            mysqli_stmt_bind_param($stmt, "isssiis", $userId, $NIC, $phone, $company, $experience, $c_count, $coverName);
                            mysqli_stmt_execute($stmt);
                        } else {
                            die("something went wrong");
                        }
                    }
                }
                ?>
                <div class="input-box">
                    <input type="text" class="form-control" name="FirstName" placeholder="First name">
                </div>
                <div class="input-box">
                    <input type="text" class="form-control" name="lastName" placeholder="Last name">
                </div>
                <div class="input-box">
                    <input type="text" class="form-control" name="NIC" placeholder="NIC number">
                </div>
                <div class="input-box">
                    <input type="text" class="form-control" name="email" placeholder="Email address">
                </div>
                <div class="input-box">
                    <input type="text" class="form-control" name="phone" placeholder="Phone Number">
                </div>
                <div class="input-box">
                    <input type="text" class="form-control" name="company" placeholder="Company Name (Current)">
                </div>
                <div class="input-box">
                    <input type="text" class="form-control" name="experience" placeholder="Years of Experience as an Agent">
                </div>
                <div class="input-box">
                    <input type="text" class="form-control" name="c_count" placeholder="Count of previous clients">
                </div>
                <div class="input-box">
                    <input type="text" class="form-control" name="password" placeholder="Create password">
                </div>
                <div class="input-box button">
                    <input type="submit" value="Request now" name="submit">
                </div>
            </form>
        </div>
    </div>

    <?php
        include './component/footer.php';
    ?>
</body>

</html>