<%-- 
    Document   : HomePage
    Created on : Oct 2, 2023, 3:55:41 PM
    Author     : Phan Thien
--%>
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

  <title>SCIENCE</title>
</head>

<body>
    	<%
	/* Checking the user credentials */
		String userName = (String)session.getAttribute("userName");
		String password = (String)session.getAttribute("passWord");
	        boolean isValidUser = true;
		if(userName == null || password==null){	
			isValidUser = false;
		}	
		
	%>
<%
	if(isValidUser) {
%>
<%@ include file="AuthorHeader.jsp" %>

<%
	}
	else{
%>
<%@ include file="header.html" %>
<%
	}
%>
  <!-- Promo Slideshow -->

  <section class="promo-slide">
    <div class="container">

      <div id="promoSlide" class="carousel slide" data-ride="carousel" data-interval="3000">

        <!-- Slides -->
        <div class="carousel-inner">
          <div class="carousel-item active">
              <a href="MainController?PublicID=1&action=Search">
              <img src="images/1.jpg" alt="Slide 1">
              </a>
          </div>
          <div class="carousel-item">
              <a href="MainController?PublicID=2&action=Search">
             <img src="images/2.jpg" alt="Slide 2">
             </a>
          </div>
          <div class="carousel-item"> 
              <a href="OpenAccessPublicationPage.jsp">
             <img src="images/3.jpg" alt="Slide 3"></a>
          </div>
          <div class="carousel-item">
              <a href="OpenAccessPublicationPage.jsp">
            <img src="images/4.jpg" alt="Slide 4"></a>
         </div>
         <div class="carousel-item">
             <a href="OpenAccessPublicationPage.jsp">
          <img src="images/5.jpg" alt="Slide 5"></a>
         </div>
         <div class="carousel-item">
             <a href="OpenAccessPublicationPage.jsp">
                <img src="images/background.jpg" alt="Slide 6"></a>
          </div>
        </div>
        
        <!-- Controls -->
        <a class="carousel-control-prev" href="#promoSlide" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#promoSlide" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

      </div>
    </div>
  </section>
  <!-- Featured Articles Section -->
  
  <section>
    <div class="container">
      <h2 class="section-heading">Featured Articles</h2>

      <div class="row">
        <div class="col-md-4 mb-lg-4">
          <div class="content">
            <h3>SCIENCE</h3>
            <img src="images/s2.jpg" alt="" />
            <button class="btn btn-link" data-toggle="collapse" data-target="#content1">
              &#9660; View cover
            </button>
            <div id="content1" class="collapse">
              <p>After 17 years underground, a recently molted periodical cicada dries its wings in central Maryland before joining with billions of others to chorus, mate, and lay eggs. Researchers found that during the 2021 Brood X emergence, many species of birds altered their diets to feed on this massive resource pulse, markedly altering the dynamics of forest food webs. See pages 268 and 320.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4 mb-lg-4">
          <div class="content">
            <h3>SCIENCE IMMUNOLOGY</h3>
            <img src="images/si2.jpg" alt="" />
            <button class="btn btn-link" data-toggle="collapse" data-target="#content2">
              &#9660; View cover
            </button>
            <div id="content2" class="collapse">
              <p>Guarding the Brain from Infection. The central nervous system (CNS) is shielded from invading pathogens through a combination of barriers and immune surveillance. Kim et al. identified a population of brain-localized macrophages capable of defending against systemic viruses to limit viral propagation in the CNS. This month's cover shows blood vessels (yellow) within the connective membrane covering the brain, known as the dura mater, with the protective macrophages expressing MHCII (magenta) distributed along the venous sinus.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4 mb-lg-4">
          <div class="content">
            <h3>SCIENCE ROBOTICS</h3>
            <img src="images/sr2.jpg" alt="" />
            <button class="btn btn-link" data-toggle="collapse" data-target="#content3">
              &#9660; View cover
            </button>
            <div id="content3" class="collapse">
              <p>Special Issue on Assistive and Rehabilitative Robots?a Neuromusculoskeletal Prosthesis for Daily Use by a Transradial Amputee. Ortiz-Catalan et al. report on the clinical implementation of a prosthesis integrated into the radius and ulna bones. The prosthesis device relied on implanted electrodes that provided bidirectional neural communication between the residual limb and the bionic hand, enabling improvements to the quality of life of the amputee in terms of comfort, reduced phantom limb pain, and object manipulation. This month's cover is an image of the amputee using the prosthesis device to hold a coffee mug.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4 mb-lg-4">
          <div class="content">
            <h3>SCIENCE SIGNALING</h3>
            <img src="images/ss2.jpg" alt="" />
            <button class="btn btn-link" data-toggle="collapse" data-target="#content4">
              &#9660; View cover
            </button>
            <div id="content4" class="collapse">
              <p>This week, Kuppusamy et al. reveal the signaling pathway by which the Ca2+ channel TRPV4 is activated to result in the lung damage and dysfunction caused by ischemia/reperfusion injury, which occurs during lung transplantation. The image shows a mouse lung that has been subjected to ischemia/reperfusion injury.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4 mb-lg-4">
          <div class="content">
            <h3>SCIENCE ADVANCES</h3>
            <img src="images/sa2.jpg" alt="" />
            <button class="btn btn-link" data-toggle="collapse" data-target="#content5">
              &#9660; View cover
            </button>
            <div id="content5" class="collapse">
              <p>A robot, stabilized at the entrance of a heart?s right atrium guides a surgical instrument toward the tricuspid valve. The heart presents surgical challenges because of variation in the size of its structures, its constant movement, and its remote location. To address these problems, Rogatinsky et al. created a soft robotic platform for minimally invasive procedures that can both stabilize the entrance to the heart and guide existing surgical instruments toward various anatomical targets.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4 mb-lg-4">
          <div class="content">
            <h3>SCIENCE TRANSLATIONAL</h3>
            <img src="images/stn2.jpg" alt="" />
            <button class="btn btn-link" data-toggle="collapse" data-target="#content6">
              &#9660; View cover
            </button>
            <div id="content6" class="collapse">
              <p>Deciphering Congenital Zika Virus Syndrome. The cover shows an infant cynomolgus macaque holding onto its mother. Infant macaques, like infant humans, can develop congenital Zika virus (ZIKV) syndrome as a consequence of maternal ZIKV infection during pregnancy. In this issue, Moadab et al. and Saron et al. interrogate the consequences of maternal ZIKV infection on the development of infant macaques before and immediately after birth. Moadab et al. found that infant rhesus macaques, and especially male infants, born to ZIKV-infected mothers exhibited slower growth than uninfected controls. They also spent more time with their mothers than control macaques during the first month of life. Saron et al. asked whether prior infection of cynomolgus macaques with a related flavivirus, Dengue virus (DENV), influenced subsequent pathology caused by maternal ZIKV infection. The authors found that offspring of DENV-immune mothers infected with ZIKV during pregnancy had more severe congenital ZIKV syndrome, characterized by smaller head circumference and increased brain pathology. Together, these studies highlight the behavioral and physiological consequences of maternal ZIKV infection, particularly in DENV-endemic areas.</p>
            </div>
          </div>
        </div>
  
      </div>
    </div>
  </section>

  <!-- Footer -->
  <%@ include file="footer.jsp" %>'
  
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://apis.google.com/js/platform.js" async defer></script>
  <meta name="google-signin-client_id" content="YOUR_CLIENT_ID">

  
</body>

</html>