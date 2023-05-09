<!DOCTYPE html>
<html lang="en">
    
<?php include 'header.php';?>
<link rel="stylesheet" href="styles/flavours.css?<?php echo time(); ?>">

<body>
    <header>
        <?php 
        include 'navbar.php';
        require_once "config.php";
        ?>
        
    </header>

    <main class="main-content">
        <h1 class="main-content__header">All Flavours</h1>
        <section class="flavours">

        <?php

        $sql = "SELECT * FROM product";
        if($result = mysqli_query($link, $sql)){
            if(mysqli_num_rows($result) > 0){
                while($row = mysqli_fetch_array($result)){
                    echo '<div class="flavours__flavour">';
                        echo '<div class="flavours__image"></div>';
                        echo '<h2 class="flavours__name">' . $row['productName'] . '</h2>';
                        echo '<p class="flavours__description">' . $row['productDescription'] . '</p>';
                        echo '<p class="flavours__price">$' . $row['productPrice'] . '</p>';
                    echo '</div>';
                }
            }
        }

        ?>

        </section>
    </main>
    
    <?php include 'footer.php';?>
</body>

</html>