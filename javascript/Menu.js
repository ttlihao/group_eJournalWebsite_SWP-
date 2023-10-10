document.addEventListener('DOMContentLoaded', function () {
    const menuIcon = document.getElementById('menu-icon');
    const myList = document.querySelector('.navlist .myList');

    function toggleMenuIcon() {
        if (window.innerWidth <= 768) {
            myList.style.display = 'none';
            menuIcon.style.display = 'block';
        } else {
            myList.style.display = 'block';
            menuIcon.style.display = 'none';
        }
    }
    toggleMenuIcon();
    window.addEventListener('resize', toggleMenuIcon);
});
