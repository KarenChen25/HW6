
<html>
  <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file = "db_ini.jsp"%>
<%request.setCharacterEncoding("UTF-8");%>
  <%
  String na = request.getParameter("na");
  String pa = request.getParameter("pa");
  String sql = "select * from form where name = '" + na + "' AND password = '" + pa + "';";
  pstmt = conn.prepareStatement(sql);
  ResultSet rs = pstmt.executeQuery();
  //out.print(name);
  //out.print(password);
    if(rs.next())
    {
      String name = rs.getString("name");
      String password = rs.getString("password");
      response.setHeader("refresh","0;URL=login.html");
  }else{
response.setHeader("refresh","2;URL=index.html");
out.print("<h2>帳號或是密碼錯了,請重新登入</h2>");
}
  rs.close();
%>
<style>
    html {
        background: -webkit-linear-gradient(top, #88c7f0, #7d7cc4) no-repeat;
        background-size: cover;
        height: 140%;
        font-family: 微軟正黑體;
        text-align: center;
    }
    </style>
</html>
