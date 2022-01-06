<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.vo.GuestBookVo" %>
<%@ page import = "com.javaex.dao.GuestBookDao" %>
    
<%
	int no = Integer.parseInt(request.getParameter("no"));
	String pw = new GuestBookDao().getGuestBook(no).getPassword();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<script>
		function del(){
			if(<%=pw%> == document.getElementById("pw").value){
				var form = document.df;
				form.submit();
			}
			else{
				alert('비밀번호가 일치하지 않습니다.');
				location.reload();
			}
		}
	</script>
	
	<form action="delete.jsp" method="post" name="df">
		<input type="hidden" name="no" value="<%=no%>" >
		비밀번호 <input type="password" name="password" id="pw">
		<button type="button" onclick="del()"> 확인 </button>
	</form>
	
	<a href="addList.jsp">메인으로 돌아가기</a>
</body>
</html>