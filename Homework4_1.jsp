<%--
  Created by IntelliJ IDEA.
  User: Chungdenroi
  Date: 12/16/2021
  Time: 6:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Homework 4.1</title>
</head>
<body>
    <center>
        <h1>The Grade Evaluation Application</h1>
        <form action="evalGrade" method="post">
            <table border="2" align="center">
                <tr>
                    <td>Enter your grade: </td>
                    <td><input type="number" value="${grade}" name="grade"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <%
                            String eval = "";
                            try{
                                eval = (String) request.getAttribute("eval");
                            } catch (NullPointerException ex) {
                                System.out.println("null");
                            }
                        %>
                        Result: <%=eval%>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="View">
                        <input type="reset" value="Reset">
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
