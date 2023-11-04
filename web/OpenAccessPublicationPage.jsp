<%-- 
    Document   : OpenAccessPublicationPage
    Created on : Oct 2, 2023, 3:58:04 PM
    Author     : Phan Thien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Science</title>
  <script src="https://kit.fontawesome.com/ecc3edd98f.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <style>
    .back-btn {
      position: fixed;
      left: 30px;
      top: 30px;
      z-index: 999;
      box-shadow: 0 2px 10px rgba(0,0,0,0.1);
      transition: transform 0.2s;  
    }

    .back-btn:hover {
      transform: translateY(-3px);
    }
    main{
        margin: 30px 0;
    }
    article {
    margin-bottom: 1rem;
    }

    aside {
    background-color: #eee;
    padding: 1rem;
    border-radius: 0.5rem; 
    }
    aside img {
    display: block;
    margin: 0 auto;
    }
    .list-group{
        cursor: pointer;
        margin: 20px 0;
    }
    .list-group-item:hover {
      transform: translateY(-5px);
      box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    }
    .btn-primary {
      background-color: #4CAF50; 
      border-color: #4CAF50;
    }

    .btn-primary:hover {
      background-color: #45a049; 
      border-color: #45a049;
    }
    /* Footer */
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
            <a class="nav-link" href="science.jsp">Subjects</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="aboutPage.html">About</a>
        </li>
      </ul>
    </div>
    <!-- Search Section -->
    <form class="form-inline my-2 my-lg-0 ml-auto">
      <input class="form-control" type="text" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>

  </nav>
  
  <main class="container mt-5">
      <form action="MainController">
      <button class="btn btn-primary back-btn" name="action"value=null>
      <i class="fas fa-arrow-left"></i> Back
  </button>
      </form>
    <div class="row">
      <div class="col-sm-8">
        <h2>Demographic and hormonal evidence for menopause in wild chimpanzees</h2>
        
        <article>
            <h3>Editor’s summary</h3>
            <p>Menopause occurs in all known human societies; however, it is not common to all mammals and has so far only been observed in humans and a few toothed whale species. Wood et al. looked at demographic and endocrine data in a long-studied population of chimpanzees in Uganda and found clear evidence for menopause in females living past the age of 50 (see the Perspective by Cant). Unlike the case for humans and toothed whales, however, postreproductive chimps in this population are not involved in the raising of related offspring, suggesting that a different process is driving its development. —Sacha Vignieri</p>
        </article>

        <article>
            <h3>Structured Abstract</h3>
            <b>INTRODUCTION</b>
            <p>It is not obvious why selection should favor menopause or the continued survival of individuals that can no longer reproduce. Among mammals, substantial numbers of post-reproductive females living under natural conditions in the wild have only been observed in humans and a few whale species. The rarity of this trait makes it both interesting and difficult to study. Data from our close primate relatives are especially valuable for the reconstruction and causal modeling of human life history evolution. In this study, we combined demographic and hormonal data to investigate post-reproductive life spans and their underlying physiological mechanisms in chimpanzees (Pan troglodytes schweinfurthii), who, along with bonobos, are humans’ closest living relatives.</p>
            <b>RATIONALE</b>
            <p>We examined the mortality and fertility rates of 185 female chimpanzees in the Ngogo community of wild chimpanzees in Kibale National Park, Uganda, from 21 years of observation (1995–2016). We calculated the demographic measure PrR (post-reproductive representation), representing the fraction of adult life spent in a post-reproductive state. Human menopause, the nonpathological and permanent cessation of ovarian function resulting from the depletion of ovarian follicles, is reflected in increasing levels of follicle-stimulating hormone (FSH) and luteinizing hormone (LH) and decreasing levels of ovarian steroid hormones (estrogens and progestins). To assess whether Ngogo females undergo humanlike menopause, we analyzed age-associated trends in five hormones measured in 560 urine samples from 66 females of varying reproductive status and age (range: 14 to 67 years).</p>
            <b>RESULTS</b>
            <p>As in other chimpanzee populations and humans, fertility declined after age 30, and no births were observed after age 50. Unlike other chimpanzee populations, but as in humans, it was not unusual for Ngogo females to live past the age of 50 (N = 16 females). The observed PrR value was 0.195, indicating that a female who reached adulthood (age 14) was post-reproductive for about one-fifth of her adult life, around half as long as human hunter-gatherers. Hormonal measures show that Ngogo females experience a reproductive transition similar to that of humans, characterized by increasing levels of FSH and LH and declining levels of estrogens and progestins as they undergo menopause.</p>
            <b>CONCLUSION</b>
            <p>Menopause ends reproduction around the age of 50 in both humans and wild chimpanzees. Substantial PrR has not been previously observed in any wild primate population, chimpanzees included. One explanation for this discrepancy is that substantial PrR could be a temporary response to unusually favorable ecological conditions at Ngogo, including low levels of predation, high food availability, and successful between-group competition. A second possibility is that substantial PrR is an evolved, species-typical trait in chimpanzees, which has not been observed elsewhere owing to recent negative human impacts, especially disease epidemics. The grandmother hypothesis suggests that older females could evolve to live past their reproductive years to help increase their daughters’ fertility or their grandoffsprings’ survival. This is unlikely to apply to chimpanzees, whose aged females generally live apart from their daughters, as daughters leave their natal groups at adulthood. In the context of female-biased dispersal, a more relevant theory may be the reproductive conflict hypothesis, which highlights the fact that after migrating into a new group, females become increasingly related to other group members as they age and face competition with younger females for limited breeding opportunities. The oldest females might stop reproducing in order to limit the inclusive fitness costs of that competition. The grandmother and reproductive conflict hypotheses are not mutually exclusive alternatives, and both may be required to explain why all human societies have higher PrR than documented here for chimpanzees.</p>
        </article>
      </div>

      <aside class="col-sm-4">
        <h4>CURRENT ISSUE</h4>
        <img src="/images/s3.jpg" class="img-fluid rounded" alt="">
        <h4 style="margin:20px auto;">Similar articles</h4>
        <ul class="list-group mt-3">
          <li class="list-group-item">Trending article 1</li>
          <li class="list-group-item">Trending article 2</li>
          <li class="list-group-item">Trending article 3</li>
        </ul>  
      </aside>

    </div>
  </main>
  
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
              <li><a href="HomePage.jsp">Home</a></li>
            <li><a href="science.jsp">Subjects</a></li>
            <li><a href="aboutPage.html">About</a></li>
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
  

</body>
</html>
