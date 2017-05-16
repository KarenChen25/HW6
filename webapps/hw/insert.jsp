<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file = "db_ini.jsp"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
if(request.getParameter("name") != null){
  String sql = "insert into form (name,password,birthday,memo) values (?,?,?,?)";
  pstmt = conn.prepareStatement(sql);
  String name = request.getParameter("name");
  String password = request.getParameter("password");
  String birthday = request.getParameter("birthday");
  String memo = request.getParameter("memo");
  pstmt.setString(1 , name);
  pstmt.setString(2 , password);
  pstmt.setString(3 , birthday);
  pstmt.setString(4 , memo);
  pstmt.executeUpdate();
  //out.print("Insert success!return index.jsp after 3 seconds!");
  response.setHeader("Refresh" , "3;url=index.html");
  request.setCharacterEncoding("utf-8");
}
%>
<html>
<head>
    <style>
        html {
            background: -webkit-linear-gradient(top, #88c7f0, #7d7cc4) no-repeat;
            background-size: cover;
            height: 140%;
        }

        .div1 {
            background-color: rgba(72, 72, 72, 0.4);
            padding-left: 45px;
            padding-right: 0px;
            padding-top: 25px;
            padding-bottom: 30px;
            width: 450px;
            float: left;
            left: 50%;
            position: absolute;
            margin-top: 20px;
            margin-left: -260px;
            -moz-border-radius: 7px;
            -webkit-border-radius: 7px;
            font-family: 微軟正黑體;
        }

        input {
            border: 2px solid #fed264;
            padding: 7px;
            font-size: 15px;
        }

        textarea {
            border: 3px solid #fed264;
            font-size: 15px;
        }

        .feedback-input:focus {
            background: #fff;
            box-shadow: 0;
            border: 2px solid #fed264;
            color: #fed264;
            outline: none;
            padding: 10px 10px 10px 10px;
        }

        .focused {
            color: #30aed6;
            border: #30aed6 solid 3px;
        }

        table,
        td {
            padding: 5px;
            border: 2px solid #fed264;
            width: value;
            word-break: break-all;
            border-collapse: collapse;
            font-color: #ccc;
        }
    </style>
</head>
<body>
    <div class="div1">
        <form action="insert.jsp" method="POST">
            <H2>RESUME</H2>帳號:
            <input type="input" name="name" class="feedback-input" placeholder="帳號" /><br><br>密碼:
            <input type="input" name="password" class="feedback-input" placeholder="密碼" /><br><br> 生日:
            <input type="date" name="birthday" class="feedback-input" /><br><br>MEMO：
            <br><br>
            <textarea type="text" name="memo" id="three" class="feedback-input" style="height:150px;width:243px"></textarea><br><br>
            <input type="submit" value="提交" id="show" onclick="show();this.disabled=true" style="width:120px;height:40px;border:2px #fed264 solid; background-color:#697399">&nbsp;&nbsp;&nbsp;
            <input type="button" value="重設" onclick="location.reload()" style="width:120px;height:40px;border:2px #fed264 solid; background-color:#697399"><br><br>
</form>
</div>

</body>
</html>
