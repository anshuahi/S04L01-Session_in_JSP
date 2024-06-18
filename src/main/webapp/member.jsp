<%@page %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Area</title>
</head>
<body>

<h2>Member Area</h2>

<%
String username = null, sessionId = null, local = null;
/* System.out.println(cookies);
 */

 if(request.getSession().getAttribute("username") == null) {
	 response.sendRedirect("login.jsp");
 }
 else {
	 username = request.getSession().getAttribute("username").toString();
	 sessionId = request.getSession().getId();
 }
 
%>

Username: <%= username %> <br>
Session Id: <%= sessionId %> <br>
Localhost: <%= local %>

<form action="<%= request.getContextPath() %>/MemberAreaControler" method="get">
<input type="hidden" name="action" value="destroy">
<input type="submit" value="logout">
</form>

</body>
</html>