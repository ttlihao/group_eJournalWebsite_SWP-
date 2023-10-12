const searchIcon = document.getElementById('search-icon');
const searchInput = document.getElementById('search-input');

if (searchInput.style.display !== 'block') {
    searchInput.style.display = 'none';
}
searchIcon.addEventListener('click', function() {
    if (searchInput.style.display === 'none' || searchInput.style.display === '') {
        searchInput.style.display = 'block';
        searchInput.focus();
    } else {
        searchInput.style.display = 'none';
    }
});
document.addEventListener('click', function(event) {
    if (!searchInput.contains(event.target) && event.target !== searchIcon) {
        searchInput.style.display = 'none';
    }
});
