<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%!String ip = "140.120.49.205:3306";
String user = "4102029023";
String pass = "Ss4102029023!";
String database = "4102029023";
String url = "jdbc:mysql://"+ip+"/"+ database + "?useUnicode=true&characterEncoding=utf-8";
String driver ="com.mysql.jdbc.Driver";
Connection conn = null;
PreparedStatement pstmt = null;
%>
<%
try{
Class.forName("org.gjt.mm.mysql.Driver").newInstance();
conn = DriverManager.getConnection(url,user,pass);
//out.println(conn);
}
catch(SQLException sqle){
  out.println("SQL Exception : " + sqle);
}
%>
