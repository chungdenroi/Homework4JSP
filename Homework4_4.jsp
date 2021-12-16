<%--
  Created by IntelliJ IDEA.
  User: Chungdenroi
  Date: 12/15/2021
  Time: 11:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Homework 4.4</title>
</head>
<body>
    <center>
        <h1>Login Form</h1>
        <form action="Homework4_4.jsp" method="post">
            <fieldset>
                <legend>Login</legend>
                Username: <input type="text" name="username">
                <br/>
                Password: <input type="password" name="password">
                <br/>
                <input type="submit" value="Login">
            </fieldset>
        </form>
        <%
            try {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                if(username == "" || password == "") {%>
                    <script>alert("Username or password is empty!")</script>
                <%} else {
                    if(username.equals("admin") && password.equals("123456")) {%>
                    <script>alert("Login success")</script>
                    <%} else {%>
                        <script>alert("Login failed!")</script>
                    <%}
                    }
                } catch (NullPointerException e) {
                System.out.println("Null!");
            }%>
    </center>
</body>
</html>
