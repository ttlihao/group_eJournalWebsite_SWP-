<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

  <!-- Custom CSS -->
  <style>
    body {
      font-family: 'Open Sans', sans-serif;
    }
    .navbar {
      background-color: #4a90e2;
    }

    .navbar-brand {
      color: #fff;
      font-size: 24px;
    }
    .navbar-nav .nav-link {
            color: #fff;
            font-size: 18px;
    }

    /* Custom CSS for styling */
    .navbar {
      padding: 15px; /* Adjust padding to your preference */
    }

    .form-inline {
      margin-right: 10px; /* Add some space between the search and button */
    }

    .btn-primary {
      background-color: #4CAF50; /* Customize button color */
      border-color: #4CAF50;
    }

    .btn-primary:hover {
      background-color: #45a049; /* Adjust hover color */
      border-color: #45a049;
    }
    .modal-content {
      border: none; /* Remove border from the modal content */
    }
    
    .modal-body {
      padding: 20px; /* Adjust padding to your preference */
    }

    .modal-footer {
      border-top: none; /* Remove the top border of the modal footer */
    }
    /* Slideshow styles */

    .promo-slide {
      padding: 60px 0; 
    }
    
    .promo-slide .carousel-item img {
      width: 100%;
      height: auto; 
      max-height: 500px;
      object-fit: cover;
    }

    .carousel-indicators li {
      width: 10px;
      height: 10px;
      border-radius: 50%;
    }

    .carousel-control-prev, 
    .carousel-control-next {
      width: 5%;
    }
    .carousel-control-prev-icon,
    .carousel-control-next-icon {
      width: 3rem;
      height: 3rem;
      color: #007bff;
    }
    .carousel-control-prev .carousel-control-prev-icon,
    .carousel-control-next .carousel-control-next-icon {
      padding: 15px;
    }
    /* Make indicators transparent */
    .carousel-indicators {
      bottom: -50px;
    }

    .carousel-indicators li {
      background-color: rgba(0,0,0,0.3); 
    }

    .carousel-indicators .active {
      background-color: #333;
    }
    /* Fade animation */
    .carousel-item {
      opacity: 0;
      transition: opacity 0.5s ease-in-out;
    }
    
    .carousel-item.active {
      opacity: 1;
    }
    /* Style the section */
    section {
      padding: 40px 0;
    }

    /* Style the container */
    .container {
      max-width: 1200px;
      margin: 0 auto;
    }

    /* Style the section heading */
    .section-heading {
      text-align: center;
      font-size: 24px;
      margin-bottom: 20px;
      color: #333;
    }

    /* Style the content blocks */
    .content {
      background-color: #fff;
      border: 1px solid #e0e0e0;
      border-radius: 5px;
      padding: 20px;
      margin-bottom: 20px;
      text-align: center;
    }

    /* Style the headings inside the content blocks */
    .content h3 {
      font-size: 18px;
      color: #333;
    }

    /* Style the images inside the content blocks */
    .content img {
      max-width: 100%;
      height: auto;
    }

    /* Style the paragraphs inside the content blocks */
    .content p {
      font-size: 16px;
      color: #555;
      margin: 15px 0;
    }

    /* Style the "More" links */
    .content a {
      display: inline-block;
      padding: 10px 20px;
      background-color: #fff;
      color: #0056b3;
      text-decoration: none;
      border-radius: 5px;
      margin-top: 10px;
    }

    /* Hover effect for "More" links */
    .content a:hover {
      background-color: #0056b3;
      color: #ccc;
    }

    /* Media query for responsiveness */
    @media (max-width: 768px) {
      .col-md-4 {
        flex: 0 0 100%;
        max-width: 100%;
      }
    }

    .text-center {
      text-align: center;
    }

    /* Style the Register button */
    #registrationForm button {
      background-color: #4CAF50;
      color: #fff;
      border: none;
    }

    #registrationForm button:hover {
      background-color: #45a049;
    }

    .section-heading {
      font-size: 2.5rem;
      margin-bottom: 30px;
      font-weight: bold;
    }

    .content {
      background-color: #f8f9fa;
      padding: 30px;
      border-radius: 4px;
      box-shadow: 0 0 10px #ccc;
    }

    .content img {
      max-width: 100%;
    }

    .content a {
      color: #007bff;
    }

    footer {
      background: #343a40;
      color: #fff;
      padding: 20px 0;
    }

    footer h4 {
      font-size: 1rem;
      color: #fff;
    }

  </style>

</head>

<body>

  <!-- Footer -->

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <h4>About</h4>
          <p>Science journal publishes original research and news across disciplines.</p>
        </div>
        <div class="col-md-4">
          <h4>Navigation</h4>
          <ul class="list-unstyled">
            <li><a href="home.html">Home</a></li>
            <li><a href="science.jsp">Subjects</a></li>
            <li><a href="about.html">About</a></li>
          </ul>
        </div>
        <div class="col-md-4">
          <h4>Contact</h4>
          <ul class="list-unstyled">
            <li>Email: Vietnguyenthe810@gmail.com</li>
            <li>Phone: 0327313013</li>
          </ul>
        </div>
      </div>
      <section class="hero">
        <div class="container">
          <div class="row">
            <div class="col-md-6 text-center text-md-left">
              <h1 class="display-4">Discover Groundbreaking Science</h1>
              <p class="lead my-4">Read about the latest research and advances across scientific fields.</p>
              <a href="science.html" class="btn btn-primary btn-lg">Start Reading</a>
            </div>
          </div>
        </div>
      </section>
      <div class="row mt-5">
        <div class="col text-center">
          <p>&copy; 2023 Science Journal</p>
        </div>
      </div>
    </div>

  </footer>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://apis.google.com/js/platform.js" async defer></script>
  <meta name="google-signin-client_id" content="YOUR_CLIENT_ID">

  
</body>

</html>