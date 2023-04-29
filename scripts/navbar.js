const menu = document.querySelector('.site-nav__menu');
const hamburger = document.querySelector(".site-nav__hamburger");

hamburger.addEventListener('click', () => {
    menu.classList.toggle('active');
});