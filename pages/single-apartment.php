<?php
$pageTitle = 'sample page';
require './component/head.php';
require './component/header.php';
?>
    <?php  //get the id from apartment showcase
        $id = $_GET['apartmentId'];
        // $id = 1;
        echo $id;
    ?>

    <link rel="stylesheet" href="../styles/image-slider.css">

    <div class="slider-1">
        <img src="../sources/Images/<?php echo "$id"?>/pic1.jpg" class="slide">
        <img src="../sources/Images/<?php echo "$id"?>/pic2.jpg" class="slide">
        <img src="../sources/Images/<?php echo "$id"?>/pic3.jpg" class="slide">
        <img src="../sources/Images/<?php echo "$id"?>/pic4.jpg" class="slide">
        <img src="../sources/Images/<?php echo "$id"?>/pic5.jpg" class="slide">
    </div>

    <div class="nav">
        <button style="border: 2px solid #002d62;" class="button1" onclick="goPrev()">
            go Back
        </button>

        <button style="border: 2px solid #002d62;" class="button1" onclick="goNext()">
            go Forword
        </button>
    </div>


    <?php include 'fetch_data.php' ?>

        <?php
        $sql = "SELECT * FROM apartment";
        $result = $conn->query($sql);

        // $result->data_seek($id); // Indexing starts from 0, so 1 for the second row


        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
        } else {
            echo "0 results";
        }
        ?>

    <div class="container">
        <div class="apartment-details flex flex-vetical-center flex-space-between w-80 margin-y-50">
            <div class="apartment-details">
                <p>Publish date     : <?php echo $row["publisher_date"]  ?> </p>
                <p>Number of rooms  : <?php echo $row["apartment_number_rooms"] ?></p>
                <p>Contact Number   : <?php echo $row["apartment_contact_number"] ?></p>
                <br>
                <h3>Price : <?php echo $row["apartment_cost"] ?></h3>
            </div>
            <div class="apartment-address">
                <p>First address line:<?php echo $row["apartment_first_address_line"] ?> </p>
                <p>Second address line: <?php echo $row["apartment_second_address_line"] ?> </p>
                <p>City <?php echo $row["apartment_city"] ?> </p>
            </div>
        </div>

        <h1 class="section-title margin-y-20s">About Apartmet</h1>
        <p class= 'margin-y-20'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi reiciendis totam nemo iure non sequi facilis laudantium ab magnam, esse, tempora nam dolores sint, ipsum nisi corrupti doloribus. Doloremque, eum consectetur! Dolorem quibusdam corrupti aut voluptate laborum consequuntur quod odit neque nemo libero odio possimus, facere eius quisquam aliquam? Ea rem laborum libero, fugit ullam deleniti nesciunt molestias ipsa doloribus possimus dignissimos, soluta accusantium id omnis veniam esse quaerat, blanditiis dolor labore voluptatibus? Incidunt rerum explicabo temporibus tempora nobis, possimus repellat amet tenetur enim, iste debitis molestias ratione dolore perferendis voluptatibus iure accusamus quos sapiente earum, natus aspernatur doloremque facere quo. Facere iste fuga sequi adipisci, sit laboriosam quibusdam perferendis impedit, quaerat maxime ducimus! Non quisquam nesciunt numquam adipisci porro! Numquam rerum dignissimos iusto a molestiae pariatur dolorem consequuntur, consequatur architecto animi provident et hic labore accusantium aperiam? Id dolorum cupiditate omnis veritatis, amet nam, sit perspiciatis quis vitae laudantium dolor est accusamus commodi explicabo voluptatibus optio ad eum accusantium. Modi nulla aspernatur sapiente, enim perspiciatis earum. Harum, natus molestiae? Optio eum beatae rerum fugit impedit officia esse, at, dicta, explicabo reiciendis deserunt consequuntur velit. Explicabo similique fugit nisi, possimus temporibus dolorem vel molestiae nobis quo qui laudantium natus ipsam. Repellendus, illum cum quam doloremque voluptate sequi quas magni culpa deserunt sed sit, dolores voluptatem quasi eum alias maxime dolorem vel dolor ipsam neque optio. Sunt magnam culpa laudantium officiis facilis vitae ratione necessitatibus cumque vero architecto possimus sit, ut expedita obcaecati dolore esse consequatur perspiciatis reprehenderit inventore temporibus placeat exercitationem hic voluptate quisquam! Id deserunt officiis adipisci fuga nostrum architecto dicta itaque perspiciatis aperiam, reiciendis modi cupiditate consequatur reprehenderit dolores blanditiis excepturi ipsum delectus atque eos iure porro est. Minus possimus ipsa sint ex atque quasi quisquam vitae, placeat nulla? Ipsa quia porro magnam inventore minus laudantium ex, autem eos, blanditiis magni assumenda, quam earum veritatis deserunt eveniet eius. Voluptatibus atque officiis explicabo libero labore recusandae quasi quo ex officia, odit fugiat eos? Deleniti ullam eveniet itaque saepe nemo explicabo ab, architecto ipsum libero officiis aut alias soluta consequatur omnis. Dignissimos perferendis eos cumque quo assumenda magnam. Delectus, quos.</p>
    </div>

    <script src="../scripts/single-page-slider.js"></script>


<?php
include './component/footer.php';
?>