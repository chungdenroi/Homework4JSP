<%--
  Created by IntelliJ IDEA.
  User: Chungdenroi
  Date: 12/15/2021
  Time: 10:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Homework 4.1</title>
</head>
<body>
    <center>
        <h1>Calculate Factorial Application</h1>
        <form action="calFactorial" method="post">
            <fieldset>
                Number: <input type="number" name="number" placeholder="Enter number..." value="0">
                <input type="submit" value="Calculate">
                <input type="reset" value="Reset">
            </fieldset>
        </form>
        <p style="color: royalblue;font-size: 17px; font-weight: bold">Result: ${factorial}</p
    </center>
</body>
</html>
