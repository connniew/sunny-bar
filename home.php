<!DOCTYPE html>
<html lang="en">
    
<?php include 'header.php';?>
<link rel="stylesheet" href="styles/home.css?<?php echo time(); ?>">

<body>
    <header>
        <?php include 'navbar.php';?>
    </header>

    <main class="main-content">
        
        <section class="main-content__block cta">
            <h1 class="cta__heading">Indulge in handcrafted ice cream perfection</h1>
            <h2 class="cta__subheading">Experience the creamy, rich flavors of our artisanal creations</h2>
            <a class="cta__btn" href="">Discover our flavours</a>
        </section>
        
        <section class="main-content__block">
            <picture>
                <source media="(min-width: 992px)" srcset="images/home.jpg">
                <source media="(min-width: 768px)" srcset="images/home-tablet.jpg">
                <img class="main-content__img" src="images/home.jpg" alt="">
            </picture>
            <!-- <img class="main-content__img" src="images/home-tablet.jpg" alt=""> -->
        </section>
        
    </main>
    
    <?php include 'footer.php';?>
</body>

</html>