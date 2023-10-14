document.addEventListener("DOMContentLoaded", function () {
    const loginLink = document.getElementById("login");
    const signupLink = document.getElementById("signup");
    const forgotLink = document.getElementById("forgot");

    const loginForm = document.querySelector(".loginForm");
    const signupForm = document.querySelector(".signupForm");
    const forgotForm = document.querySelector(".forgotForm");
    
    loginLink.addEventListener("click", function () {
        loginForm.style.display = "grid";
        signupForm.style.display = "none";
        forgotForm.style.display = "none";
    });

    signupLink.addEventListener("click", function () {
        loginForm.style.display = "none";
        signupForm.style.display = "grid";
        forgotForm.style.display = "none";
    });

    forgotLink.addEventListener("click", function () {
        loginForm.style.display = "none";
        signupForm.style.display = "none";
        forgotForm.style.display = "grid";
    });
});