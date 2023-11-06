<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/ecc3edd98f.js" crossorigin="anonymous"></script>
    <title>SCIENCE</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    
    <!-- Custom CSS -->
    <style>
        body {
        font-family: 'Open Sans', sans-serif;
        }
        .navbar {
          padding: 15px; 
        }
        .form-inline {
          margin-right: 10px;
        }

        .btn-primary {
          background-color: #4CAF50; /* Customize button color */
          border-color: #4CAF50;
        }

        .btn-primary:hover {
          background-color: #45a049; /* Adjust hover color */
          border-color: #45a049;
        }

        section {
            padding: 60px 0;
        }

        .quote {
            font-size: 24px;
            font-style: italic;
            color: #6c757d;
            padding: 20px;
            background: #f1f1f1;
            border-radius: 4px;
        }

        /* Responsive columns */
        @media (min-width: 768px) {
            .content-column {
                flex: 0 0 50%;
                max-width: 50%;
            }
        }

        /* Styling for Navbar */
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

        /* Styling for Page Header */
        .jumbotron {
            background-image: url('/images/2.jpg');
            background-size: cover;
            color: #fff;
            text-align: center;
            padding: 120px 0;
        }

        /* Styling for About Section */
        .content-column {
            background: #f7f7f7;
            padding: 30px;
            border-radius: 8px;
            margin: 20px 0;
        }

        /* Styling for Quote Section */
        .quote {
            background: #e4e4e4;
            border: 1px solid #ddd;
            text-align: center;
        }

        /* Styling for Join Section */
        .join-section {
            background: #4a90e2;
            color: #fff;
            text-align: center;
            padding: 60px 0;
        }

        /* Styling for Footer */
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
     <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Science Journal</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="home.html">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="science.html">Subjects</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about.html">About</a>
        </li>
      </ul>
    </div>
    <!-- Search Section -->
    <form class="form-inline my-2 my-lg-0 ml-auto">
      <input class="form-control" type="text" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>

    <!-- "Submit Your Article" Button -->
    <form action="MainController">
    <button class="btn btn-primary ml-2" name="action" value="Logout">Logout</button>
    </form>
    <button class="btn btn-primary ml-2" data-toggle="modal" data-target="#uploadArticleModal">Submit Your Article</button>

  </nav>
  
  <!-- Modal for Uploading an Article -->
  <div class="modal fade" id="uploadArticleModal" tabindex="-1" role="dialog" aria-labelledby="uploadArticleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="uploadArticleModalLabel">Upload Your Article</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
          <form action="MainController" method="post"  enctype="multipart/form-data">
        <div class="modal-body">
          <!-- Article Upload Form -->
            <div class="form-group">
              <label for="articleTitle" >Article Title</label>
              <input type="text" class="form-control" id="articleTitle" name="title" placeholder="Enter the title of your article">
            </div>
              <div class="form-group">
              <label for="articleFile">Select Cover Page</label>
              <input type="file" class="form-control-file" id="articleFile" name="coverPage">
            </div>
            <div class="form-group">
              <label for="articleFile">Select File Journal</label>
              <input type="file" class="form-control-file" id="articleFile" name="File"> 
            </div>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary" name="action" value="ReceiveFile">Upload Article</button>
        </div>
              </form>
      </div>
    </div>
  </div>


      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>    

      
</body>
</html>
