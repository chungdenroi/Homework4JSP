<%--
  Created by IntelliJ IDEA.
  User: Chungdenroi
  Date: 12/16/2021
  Time: 4:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculate Sum Program</title>
</head>
<body>
    <center>
        <%
            String sum = "0";
            String a = "0";
            String b = "0";
            try {
                sum = (String) request.getAttribute("sum");
                a = (String) request.getAttribute("a");
                b = (String) request.getAttribute("b");
                if(sum == null) {
                    sum = "0";
                }
                if(a == null) {
                    a = "0";
                }
                if(b == null) {
                    b = "0";
                }
            } catch (NullPointerException ex) {
                System.out.println("null");
            }

        %>
        <h1>Calculate Sum Program</h1>
        <form action="calSum" method="post">
            <table border="2" align="center">
                <tr>
                    <th>A</th>
                    <th>B</th>
                </tr>
                <tr>
                    <td><input type="text" value="<%=a%>" name="a"required></td>
                    <td><input type="text" value="<%=b%>" name="b"required></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <p>Result: <%=sum%></p>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Calculate" style="border: none;width: 80px; height: 35px;background-color: chocolate;box-shadow: 1px 2px 8px #8888;border-radius: 5px;color: white;font-weight: bold">
                        <input type="reset" value="Reset" style="border: none;width: 80px; height: 35px;background-color: blueviolet;box-shadow: 1px 2px 8px #8888;border-radius: 5px;color: white;font-weight: bold">
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
