<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.dao.GuestBookDao" %> 

<%
	int no = Integer.parseInt(request.getParameter("no"));
	new GuestBookDao().deleteGuestBook(no);
	
	response.sendRedirect("addList.jsp");
%>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>