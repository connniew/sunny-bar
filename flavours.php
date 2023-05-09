<!DOCTYPE html>
<html lang="en">
    
<?php include 'header.php';?>
<link rel="stylesheet" href="styles/flavours.css?<?php echo time(); ?>">

<body>
    <header>
        <?php include 'navbar.php';?>
    </header>

    <?php
    
    require_once "config.php";

    $sql = "SELECT * FROM product";
    if($result = mysqli_query($link, $sql)){
        if(mysqli_num_rows($result) > 0){
            while($row = mysqli_fetch_array($result)){
                echo $row['productName'];
                echo "<br>";
                echo $row['productDescription'];
                echo "<br>";
                echo $row['productPrice'];
                echo "<br>";
            }
        }
    }

    ?>
    <main class="main-content">
        <h1 class="main-content__header">All Flavours</h1>
        <section class="flavours">
            <div class="flavours__flavour">
                <!-- <img src="images/lavenderhoney.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Lavender Honey</h2>
                <p class="flavours__description">A floral and sweet combination that's both soothing and refreshing.</p>
                <p class="flavours__price">$7.80</p>
            </div>
            <div class="flavours__flavour">
                <!-- <img src="images/raspberrymint.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Raspberry Mint</h2>
                <p class="flavours__description">Tart raspberries and cool mint come together in this refreshing and vibrant sorbet flavor.</p>
                <p class="flavours__price">$7.80</p>
            </div>
            <div class="flavours__flavour">
                <!-- <img src="images/bourbobrownsugar.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Bourbon Brown Sugar</h2>
                <p class="flavours__description">A decadent flavor that combines the smoky taste of bourbon with the sweetness of brown sugar.</p>
                <p class="flavours__price">$8.99</p>
            </div>

            <div class="flavours__flavour">
                <!-- <img src="images/matchawhitechocolate.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Matcha White Chocolate</h2>
                <p class="flavours__description">A delicate and luxurious ice cream with a hint of earthy matcha and chunks of smooth white chocolate.</p>
                <p class="flavours__price">$9.50</p>
            </div>
            <div class="flavours__flavour">
                <!-- <img src="images/earlgreytea.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Earl Grey Tea</h2>
                <p class="flavours__description">A sophisticated flavor that combines the floral taste of Earl Grey tea with the creaminess of ice cream.</p>
                <p class="flavours__price">$7.80</p>
            </div>
            <div class="flavours__flavour">
                <!-- <img src="images/honeycomb.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Honeycomb</h2>
                <p class="flavours__description">A sweet and crunchy ice cream featuring chunks of golden, caramelized honeycomb.</p>
                <p class="flavours__price">$7.80</p>
            </div>

            <div class="flavours__flavour">
                <!-- <img src="images/rosewaterpistachio.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Rosewater Pistachio</h2>
                <p class="flavours__description">A delicate floral ice cream with a nutty pistachio finish.</p>
                <p class="flavours__price">$7.80</p>
            </div>
            <div class="flavours__flavour">
                <!-- <img src="images/cherrycheesecake.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Cherry Cheesecake</h2>
                <p class="flavours__description">A creamy and tangy ice cream with swirls of sweet cherry sauce and chunks of rich cheesecake.</p>
                <p class="flavours__price">$8.99</p>
            </div>
            <div class="flavours__flavour">
                <!-- <img src="images/peachginger.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Peach Ginger</h2>
                <p class="flavours__description">Ripe peaches and spicy ginger come together in this refreshing and unique sorbet flavor.</p>
                <p class="flavours__price">$7.80</p>
            </div>

            <div class="flavours__flavour">
                <!-- <img src="images/blueberrycheesecake.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Blueberry Cheesecake</h2>
                <p class="flavours__description">A creamy and tangy ice cream loaded with chunks of cheesecake and fresh blueberries.</p>
                <p class="flavours__price">$8.99</p>
            </div>
            <div class="flavours__flavour">
                <!-- <img src="images/bloodorangegrapefruit.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Blood Orange Grapefruit</h2>
                <p class="flavours__description">This tangy combination of citrus flavors is bright, refreshing, and full of zesty flavor.</p>
                <p class="flavours__price">$7.80</p>
            </div>
            <div class="flavours__flavour">
                <!-- <img src="images/saltedcaramel.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Salted Caramel</h2>
                <p class="flavours__description">A buttery caramel flavor with a touch of sea salt, creating a perfect balance of sweet and salty.</p>
                <p class="flavours__price">$7.80</p>
            </div>

            <div class="flavours__flavour">
                <!-- <img src="images/blueberrylemon.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Blueberry Lemon</h2>
                <p class="flavours__description">Sweet and juicy blueberries paired with tart lemon make for a bright and refreshing sorbet flavor.</p>
                <p class="flavours__price">$7.80</p>
            </div>
            <div class="flavours__flavour">
                <!-- <img src="images/cherryblossom.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Cherry Blossom</h2>
                <p class="flavours__description">A delicate flavor made with cherry blossom petals, giving it a floral, slightly sweet taste</p>
                <p class="flavours__price">$7.80</p>
            </div>
            <div class="flavours__flavour">
                <!-- <img src="images/cardamomorange.jpg" alt=""> -->
                <div class="flavours__image"></div>
                <h2 class="flavours__name">Cardamom Orange</h2>
                <p class="flavours__description">A bold and aromatic ice cream made with warming cardamom spice and zesty orange.</p>
                <p class="flavours__price">$7.80</p>
            </div>
        </section>
    </main>
    
    <?php include 'footer.php';?>
</body>

</html>