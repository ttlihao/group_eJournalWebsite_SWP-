const Account = document.getElementById('accountBtn');
const showListAccount = document.getElementById('accountPopup');

if (showListAccount.style.display !== 'block') {
    showListAccount.style.display = 'none';
}
Account.addEventListener('click', function() {
    if (showListAccount.style.display === 'none' || showListAccount.style.display === '') {
        showListAccount.style.display = 'block';
        showListAccount.focus();
    } else {
        showListAccount.style.display = 'none';
    }
});
document.addEventListener('click', function(event) {
    if (!showListAccount.contains(event.target) && event.target !== Account) {
        showListAccount.style.display = 'none';
    }
});
	
$(function () {
 
  $('.right-menu a').click(function(){
     $(this).siblings().removeClass('active');
     $(this).addClass('active');
   
      
   var tab = $(this).attr('href').replace('#','.');
   $('.content>div').removeClass('open');
   $(tab).addClass('open');
  
  });
  
  
 });
 