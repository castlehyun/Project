<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.userDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" /> 
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바칩 프라푸치노</title>
</head>
<body>
	<%
		userDAO userDAO = new userDAO();
	 	int result=userDAO.login(user.getUserID(), user.getUserPassword());
	 	if (result==1){
	 		PrintWriter script = response.getWriter();
	 		script.println("<script>");
	 		script.println("location.href='main.jsp'");
	 		script.println("</script>");
	 	} 
	 	else if(result==0){
	 		PrintWriter script = response.getWriter();
	 		script.println("<script>");
	 		script.println("alert('비밀번호가 틀렸습니다.')");
	 		script.println("history.back()");
	 		script.println("</script>");
	 	}
	 	else if(result==-1){
	 		PrintWriter script = response.getWriter();
	 		script.println("<script>");
	 		script.println("alert('존재하지 않는 아이디 입니다.')");
	 		script.println("history.back()");
	 		script.println("</script>");
	 	}
	 	else if(result==-2){
	 		PrintWriter script = response.getWriter();
	 		script.println("<script>");
	 		script.println("alert('데이터베이스 오류가 발생하였습니다.')");
	 		script.println("history.back()");
	 		script.println("</script>");
	 	}
	 		
	 	
	%>
</body>
</html>