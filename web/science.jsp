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
    List<PublicationDTO> publications = new ArrayList<>();
    try {
        PublicationDAO dao = new PublicationDAO();
        publications = dao.getListPublication();
        
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
    <table>
        <thead>
            <tr>
                <th>Publication ID</th>
                <th>User ID</th>
                <th>Title</th>
                <th>Overview</th>
                <th>Release Date</th>
                <th>Category</th>
                <th>Is Open Access</th>
                <th>Price</th>
                <th>Cover Page</th>
                <th>Is Approved</th>
                <th>Files</th>
            </tr>
        </thead>
        <tbody>
            <% for (PublicationDTO publication : publications) { %>
            <tr>
                <td><%= publication.getPublicationID() %></td>
                <td><%= publication.getUserID() %></td>
                <td><%= publication.getTitle() %></td>
                <td><%= publication.getOverview() %></td>
                <td><%= publication.getReleaseDate() %></td>
                <td><%= publication.getCategory() %></td>
                <td><%= publication.getIsOpenAccess() %></td>
                <td><%= publication.getPrice() %></td>
                <td><%= publication.getCoverPage() %></td>
                <td><%= publication.getIsApproved() %></td>
                <td><%= publication.getFiles() %></td>
            </tr>
            <% } %>
        </tbody>
    </table>
            <%@ include file="footer.jsp" %>
</body>
</html>