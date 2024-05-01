<?php 

    $pageTitle = 'Find Agent';
    include_once './component/heade.php';

    // include prebuil header
    include_once './component/header.php';
?>

<div class="agent-contact flex flex-vertical-center">
    <div class="container">
        <div class="text-content">
            <h1>Hello! I'm Here..</h1>
            <form action="" method="post">
                <div class="double-input flex flex-gap-y-20">
                    <input type="text" placeholder="First Name" name="first-name" required>
                    <input type="text" placeholder="Last Name" name="last-name" required>
                </div>
                <input type="email" name="email" placeholder="example@gmail.com" required>
                <br>
                <textarea name="message" placeholder="Put message here.." cols="30" rows="10"></textarea>
                <br>
                <input type="file" name="attachments" id="">
                <br>
                <input type="submit" value="Send Quote">
            </form>
        </div>
    </div>
</div>