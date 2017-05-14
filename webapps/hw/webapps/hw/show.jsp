<html>
<head>
  <title>Index</title>
</head>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file = "db_ini.jsp"%>

<body>
<style>
html {
    background: -webkit-linear-gradient(top, #88c7f0, #7d7cc4) no-repeat;
    background-size: cover;
    height: 140%;
}


td {
    padding: 5px;
    border: 0px solid #fff;
    width: 150px;
    word-break: break-all;
    border-collapse: collapse;
    font-color: #ccc;
}
hr{  width: 700px; color:#fff;}
h2{ font-family:微軟正黑體 }
</style>
  <div class="div1">
<%
  String sql = "select * from form ";
  pstmt = conn.prepareStatement(sql);
  ResultSet rs = pstmt.executeQuery();
  out.print("<br><br><H2><center>資料列表</center></H2><br><center><table><tr><td>name</td><td>password</td><td>birthday</td><td>memo</td></tr></table></center><hr>");
  while(rs.next())
  {
  String name = rs.getString("name");
  String password = rs.getString("password");
  String birthday = rs.getString("birthday");
  String memo = rs.getString("memo");
  //out.println(rs.First());
  out.print("<center><table><tr><td>"+name+"</td><td>"+password+"</td><td>"+birthday+"</td><td>"+memo+"</td></tr></table></center><hr>");
}
rs.close();
%>

</div>

<br><center><input type="submit" value="回登入頁"  onclick="location.href='index.html'" style="width:120px;height:40px;border:2px #fed264 solid; background-color:#84a9df" />
<input type="submit" value="上一頁" onclick="location.href='login.html'" style="width:120px;height:40px;border:2px #fed264 solid; background-color:#84a9df" /></center>

</body>

</html>
