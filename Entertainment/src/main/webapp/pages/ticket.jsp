
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.example.demo.*"%>
<%@page import="java.util.List"%>
 <link rel="stylesheet" href=
    "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity=
    "sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"  crossorigin="anonymous">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket</title>

</head>
<body>
<% List<Order> o = (List<Order>)request.getAttribute("o"); %>
<%for(Order ord : o) {%>
<Center>
<div class="card mb-3" style="max-width: 540px; margin:10%;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="ticket.jpg" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title"><%=ord.getMovie() %></h5>
        <p class="card-text"><tr>Date: <%=ord.getDate() %></tr></p>
        <p class="card-text"><tr>Screen: Dome 1</tr></p>
        <p class="card-text"><tr>Total No.: <%=ord.getTkts() %></tr></p>
        <p class="card-text"><tr>Price: <%=ord.getPrice() %></tr></p>
     
      </div>
    </div>
  </div>
</div>
</Center>
		<%} %>
	<center>
	<br><br>	<a href="index.jsp">Home</a>
	</center>	

</body>
</html>