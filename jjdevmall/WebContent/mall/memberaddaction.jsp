<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String member_id = request.getParameter("member_id");
	String member_pw = request.getParameter("member_pw");
	String member_name = request.getParameter("member_name");
	String member_sex = request.getParameter("member_sex");
	String member_age = request.getParameter("member_age");
	System.out.println(member_id+"<--member_id");
	System.out.println(member_pw+"<--member_pw");
	System.out.println(member_name+"<--member_name");
	System.out.println(member_sex+"<--member_sex");
	System.out.println(member_age+"<--member_age");
	
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://127.0.0.1:3306/jjdevmall?useUnicode=true&characterEncoding=utf-8";
	String dbUser = "root";
	String dbPw = "java0000";
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, dbUser, dbPw);
	
	String sql = "insert into member(member_id,member_pw,member_name,member_sex,member_age) values(?,?,?,?,?)";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, member_id);
	stmt.setString(2, member_pw);
	stmt.setString(3, member_name);
	stmt.setString(4, member_sex);
	stmt.setString(5, member_age);
	stmt.executeUpdate();
%>
</body>
</html>