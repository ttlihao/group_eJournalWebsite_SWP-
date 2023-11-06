
<%@ page import="com.group4.ejournal.dao.*,java.util.List,java.util.ArrayList,java.sql.SQLException" %>


<!DOCTYPE html>
<html>
<head>
    <title>Publication List</title>
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
    <h1>Publication List</h1>
    <%
     PublicationDTO publication = (PublicationDTO) request.getAttribute("BOOK");
%>
<main class="container mt-5">
      <form action="MainController">
      <button class="btn btn-primary back-btn" name="action"value=null>
      <i class="fas fa-arrow-left"></i> Back
  </button>
      </form>
    <div class="row">
      <div class="col-sm-8">
        <h2><%= publication.getTitle() %></h2>
        
        <article>
            <h3><%= publication.getOverview() %></h3>
            <p>Menopause occurs in all known human societies; however, it is not common to all mammals and has so far only been observed in humans and a few toothed whale species. Wood et al. looked at demographic and endocrine data in a long-studied population of chimpanzees in Uganda and found clear evidence for menopause in females living past the age of 50 (see the Perspective by Cant). Unlike the case for humans and toothed whales, however, postreproductive chimps in this population are not involved in the raising of related offspring, suggesting that a different process is driving its development. ?Sacha Vignieri</p>
        </article>

        <article>
            <h3>Structured Abstract</h3>
            <b>INTRODUCTION</b>
            <p>It is not obvious why selection should favor menopause or the continued survival of individuals that can no longer reproduce. Among mammals, substantial numbers of post-reproductive females living under natural conditions in the wild have only been observed in humans and a few whale species. The rarity of this trait makes it both interesting and difficult to study. Data from our close primate relatives are especially valuable for the reconstruction and causal modeling of human life history evolution. In this study, we combined demographic and hormonal data to investigate post-reproductive life spans and their underlying physiological mechanisms in chimpanzees (Pan troglodytes schweinfurthii), who, along with bonobos, are humans? closest living relatives.</p>
            <b>RATIONALE</b>
            <p>We examined the mortality and fertility rates of 185 female chimpanzees in the Ngogo community of wild chimpanzees in Kibale National Park, Uganda, from 21 years of observation (1995?2016). We calculated the demographic measure PrR (post-reproductive representation), representing the fraction of adult life spent in a post-reproductive state. Human menopause, the nonpathological and permanent cessation of ovarian function resulting from the depletion of ovarian follicles, is reflected in increasing levels of follicle-stimulating hormone (FSH) and luteinizing hormone (LH) and decreasing levels of ovarian steroid hormones (estrogens and progestins). To assess whether Ngogo females undergo humanlike menopause, we analyzed age-associated trends in five hormones measured in 560 urine samples from 66 females of varying reproductive status and age (range: 14 to 67 years).</p>
            <b>RESULTS</b>
            <p>As in other chimpanzee populations and humans, fertility declined after age 30, and no births were observed after age 50. Unlike other chimpanzee populations, but as in humans, it was not unusual for Ngogo females to live past the age of 50 (N = 16 females). The observed PrR value was 0.195, indicating that a female who reached adulthood (age 14) was post-reproductive for about one-fifth of her adult life, around half as long as human hunter-gatherers. Hormonal measures show that Ngogo females experience a reproductive transition similar to that of humans, characterized by increasing levels of FSH and LH and declining levels of estrogens and progestins as they undergo menopause.</p>
            <b>CONCLUSION</b>
            <p>Menopause ends reproduction around the age of 50 in both humans and wild chimpanzees. Substantial PrR has not been previously observed in any wild primate population, chimpanzees included. One explanation for this discrepancy is that substantial PrR could be a temporary response to unusually favorable ecological conditions at Ngogo, including low levels of predation, high food availability, and successful between-group competition. A second possibility is that substantial PrR is an evolved, species-typical trait in chimpanzees, which has not been observed elsewhere owing to recent negative human impacts, especially disease epidemics. The grandmother hypothesis suggests that older females could evolve to live past their reproductive years to help increase their daughters? fertility or their grandoffsprings? survival. This is unlikely to apply to chimpanzees, whose aged females generally live apart from their daughters, as daughters leave their natal groups at adulthood. In the context of female-biased dispersal, a more relevant theory may be the reproductive conflict hypothesis, which highlights the fact that after migrating into a new group, females become increasingly related to other group members as they age and face competition with younger females for limited breeding opportunities. The oldest females might stop reproducing in order to limit the inclusive fitness costs of that competition. The grandmother and reproductive conflict hypotheses are not mutually exclusive alternatives, and both may be required to explain why all human societies have higher PrR than documented here for chimpanzees.</p>
        </article>
      </div>
            <%@ include file="footer.jsp" %>
</body>
</html>