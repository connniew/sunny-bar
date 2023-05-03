<!DOCTYPE html>
<html lang="en">
    
<?php include 'header.php';?>
<link rel="stylesheet" href="styles/aboutus.css?<?php echo time(); ?>">

<body>
    <header>
        <?php include 'navbar.php';?>
    </header>

    <main class="main-content">

        <h1 class="main-content__header">About Us</h1>
        
        <section class="card">
            <p class="card__content">At Sunny Bar, we believe that ice cream should be more than just a treat - it should be an experience. That's why we use only the finest, locally sourced ingredients in our ice cream. We work with local farmers and suppliers to ensure that we use the freshest, highest quality ingredients in every scoop</p> 
            <img class="card__image" src="images/bette-icecream.jpg" alt="Bette Davis eating ice cream">
        </section>

        <section class="card card--reverse">
            <p class="card__content">Our team of expert ice cream makers use traditional, time-honored techniques to craft each batch of ice cream by hand. From our classic flavors to our more unique offerings, every scoop is made with care and precision.</p>
            <img class="card__image" src="images/marilyn-icecream.jpg" alt="Marilyn Monroe eating ice cream">
        </section>

        <section class="card">
            <p class="card__content">But our shop is more than just ice cream. We believe that ice cream is more than just a dessert, it's a way to bring people together. We love being a part of our community and creating a fun, welcoming atmosphere where people can enjoy our ice cream with family and friends.</p> 
            <img class="card__image" src="images/two-icecream.jpg" alt="Marilyn Monroe eating ice cream">
        </section>

    </main>
    
    <?php include 'footer.php';?>
</body>

</html>