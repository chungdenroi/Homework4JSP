<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
    <%
        String name = request.getParameter("name");
    %>
<center>
    <h1>
        <%
            try {
                if(name == "") {
                    out.print("Hello World");
                } else {
                    out.print("Hi "+ name+ "! Welcome to the web application");
                }
            } catch (NullPointerException e) {
                System.out.println("Null");
                out.print("Hello World");
            }
        %>
    </h1>
    <h2>Homework 4 Dashboard</h2>
    <a href="Homework4_1.jsp">Homework 4.1</a> |
    <a href="Homework4_2.jsp">Homework 4.2</a> |
    <a href="Homework4_3.jsp">Homework 4.3</a> |
    <a href="Homework4_4.jsp">Homework 4.4</a> |
    <a href="Homework4_5.jsp">Homework 4.5</a>
</center>
</body>
</html>