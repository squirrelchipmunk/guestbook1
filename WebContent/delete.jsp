<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.dao.GuestBookDao" %>
<%@ page import = "com.javaex.vo.GuestBookVo" %> 

<%
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	GuestBookVo vo = new GuestBookVo(no, "", password, "", "");
	
	new GuestBookDao().deleteGuestBook(vo);
	
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