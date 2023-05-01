<!DOCTYPE html>
<html lang="en">
    
<?php include 'header.php';?>
<link rel="stylesheet" href="styles/home.css?<?php echo time(); ?>">

<body>
    <header>
        <?php include 'navbar.php';?>
    </header>

    <main class="main-content">
        
        <section class="main-content__cta">
            <h1 class="main-content__heading">Indulge in handcrafted ice cream perfection</h1>
            <h2 class="main-content__subheading">Experience the creamy, rich flavors of our artisanal creations</h2>
            <a class="main-content__btn" href="">Discover our flavours</a>
        </section>
        
        <picture class="main-content__img">
            <source media="(min-width: 992px)" srcset="images/home.jpg">
            <source media="(min-width: 768px)" srcset="images/home-tablet.jpg">
            <img src="images/home.jpg" alt="store image">
        </picture>
        
    </main>
    
    <?php include 'footer.php';?>
</body>

</html>