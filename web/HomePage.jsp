<%-- 
    Document   : HomePage
    Created on : Oct 2, 2023, 3:55:41 PM
    Author     : Phan Thien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Style/HomePage.css">
    <script src="https://kit.fontawesome.com/ecc3edd98f.js" crossorigin="anonymous"></script>
    <title>SCIENCE</title>
</head>
<body>
    <div class="header">
        <div class="logo">
            <a href="home.html"><img src="images/journal.png" alt="Journal"></a>
            <h2>Journal</h2>
        </div>
        <div class="navlist">
            <div class="myList">
                <div class="list">
                    <button id="loginBtn"><a href="LoginPage.jsp">Sign in</a></button>
                    <button id="signupBtn"><a href="RegistrationPage.jsp">Register</a></button>
                </div>
            </div>
        </div>
    </div>
    <navbar>
        <li><a href="HomePage.jsp">Home</a></li>
        <li><a href="OpenAccessPublicationPage.jsp">Subjects</a></li>
        <li><a href="about.html">About</a></li>
    </navbar>
    <content>
        <div class="content">
            <div class="contentText">
                <h3>SCIENCE HEALTHY</h3>
                <p> 
                    A summer scene in India captures how Earth’s warming climate is pushing the limits of human endurance.
                    Besides straining the body’s ability to cool itself, global warming is fostering the spread of vector
                    - and waterborne diseases and is perhaps bringing other pathogens out of hiding. 
                    This special issue examines the threats to human health and how they can be mitigated. 
                </p>
                <a href="science.html">More</a>
            </div> 
            <img src="images//science-healthy.jpg" alt="">    
        </div>
        <div class="content">
            <div class="contentText">
                <h3>SCIENCE ADVANCES</h3>
                <p>
                    A fuel cell electric vehicle contains a tungsten oxide-coated membrane electrode assembly (MEA). The dark ground underneath represents an MEA, 
                    and the water indicates proton-intercalcated tungsten oxide. You et al. 
                    developed a tungsten oxide coating that can be applied during fabrication to prevent catalyst corrosion and durability loss. 
                    This coating holds promise in development of hydrogen-based industries and may lead to more eco-friendly cities.
                </p>
                <a href="science.html">More</a>
            </div>
            <img src="images/science-advances.jpg" alt="">
        </div>
        <div class="content">
            <div class="contentText">
                <h3>SCIENCE IMMUNOLOGY</h3>
                <p>
                    An Innate GPS. Dendritic cells (DCs) migrate over large distances to transport antigen to lymph nodes, but precisely how DCs navigate the way to their destination is unclear. 
                    Alanko et al. identified that the chemokine receptor CCR7 serves as both a sensor and a sink for the chemokine CCL19, a dual function which facilitates accurate DC migration. 
                    This month’s cover shows a maximum projection image of tracks from a live imaging experiment in which DCs migrate out of a cell reservoir under agarose in response to CCL19.
                </p>
                <a href="#">More</a>
            </div>
            <img src="images/science-immunology.jpg" alt="">
        </div>
        <div class="content">
            <div class="contentText">
                <h3>SCIENCE ROBOTICS</h3>
                <p> 
                    Autonomous Drone Racing. A neural network policy using reinforcement learning enables autonomous agile drone racing at high speed. 
                    Song et al. report on how reinforcement learning outperforms methods using optimal control by permitting the discovery of more robust control responses for unmodeled dynamics. 
                    The policy, which requires minimal training, was deployed on autonomous drones and shown to outrace professional human drone pilots by successfully 
                    completing laps around a gated track with shorter times and with higher peak velocity. 
                    This month’s cover image is a time-lapse image of the drone autonomously flying through gates on a racetrack.
                </p>
                <a href="science.html">More</a>
            </div> 
            <img src="images//science-robotics.jpg" alt="">    
        </div>
        <div class="content">
            <div class="contentText">
                <h3>SCIENCE SIGNALING</h3>
                <p> 
                    This week, Adam et al. integrate time-course analyses to identify potential host-cell targets for stemming SARS-CoV-2 infection. 
                    Repurposing a multikinase inhibitor approved for cancer therapy suppressed viral replication in cultured epithelial cells. 
                    The image is a colored scanning electron micrograph of cells (blue) infected with SARS-CoV-2 (red).
                </p>
                <a href="science.html">More</a>
            </div> 
            <img src="images//science-signaling.jpg" alt="">    
        </div>
        <div class="content">
            <div class="contentText">
                <h3>SCIENCE TRANSLATIONAL MEDICINE</h3>
                <p> 
                    Polarized Profibrotic Macrophages. The cover shows a mouse fibrotic liver after 10 weeks of a nonalcoholic steatohepatitis (NASH)-inducing diet, 
                    showing expression of hepatocyte-expressing glutamine synthetase (green), cysteine-rich angiogenic inducer 61 (CYR61; red), and cell nuclei (blue). 
                    CYR61 has been linked to NASH in humans but its role was unclear. Mooring et al. found that hepatocyte-secreted CYR61 promoted hepatic monocyte infiltration and differentiation into macrophages. 
                    CYR61 also promoted polarization of these liver-infiltrating macrophages to an inflammatory, profibrotic phenotype. Antibody-mediated blockade of CYR61 decreased liver inflammation and fibrosis in mouse models of NASH, 
                    illustrating a potential therapeutic strategy to reduce pathological liver remodeling in this setting.
                </p>
                <a href="science.html">More</a>
            </div> 
            <img src="images//science-translational.jpg" alt="">    
        </div>
    </content>
    <footer>
        &copy; Journal 2023
        <div class="contact-info">
            <div class="contact-item">
              <h4>Phone:</h4>
              <p>+123456789</p>
            </div>
            <div class="contact-item">
              <h4>Contact:</h4>
              <p>Your Name</p>
            </div>
            <div class="contact-item">
              <h4>Email:</h4>
              <p>your@email.com</p>
            </div>
            <div class="contact-item">
              <h4>Address:</h4>
              <p>123 Main Street, City, Country</p>
            </div>
          </div>
    </footer>
</body>
</html>