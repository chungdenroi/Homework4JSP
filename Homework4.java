package com.example.homework4;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet({"/calFactorial","/calSum","/evalGrade"})
public class Homework4 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/calFactorial":
                int number = Integer.parseInt(request.getParameter("number"));
                double factorial = calFactorial(number);
                System.out.println("Factorial number: " + factorial);
                request.setAttribute("factorial",factorial);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("Homework4_2.jsp");
                requestDispatcher.forward(request,response);
                break;
            case "/calSum":
                try {
                    String a = request.getParameter("a");
                    String b = request.getParameter("b");
                    String sum = Integer.toString(calSum(a,b));
                    request.setAttribute("sum",sum);
                    request.setAttribute("a",a);
                    request.setAttribute("b",b);
                    RequestDispatcher requestDispatcher1 = request.getRequestDispatcher("Homework4_3.jsp");
                    requestDispatcher1.forward(request,response);
                    break;
                } catch (Exception e) {
                    System.out.println("Error");
                    response.setContentType("text/html");
                    PrintWriter printWriter = response.getWriter();
                    printWriter.println("<script>alert('You can only enter number or array number!'), window.location = 'http://localhost:8080/Homework4_war_exploded/Homework4_3.jsp'</script>");
                } break;
            case "/evalGrade":
                Double grade = Double.parseDouble(request.getParameter("grade"));
                String eval = evalGrade(grade);
                request.setAttribute("eval",eval);
                request.setAttribute("grade",grade);
                RequestDispatcher requestDispatcher2 = request.getRequestDispatcher("Homework4_1.jsp");
                requestDispatcher2.forward(request,response);
                break;


        }
    }
    protected double calFactorial(int number) {
        if(number == 1) return 1;
        if(number == 0) return 0;
        return number * calFactorial(number-1);
    }
    protected int calSum(String a, String b) {
        int sum = 0;
        if(a.indexOf(",") == -1 && b.indexOf(",") == -  1) {
            int numberA = Integer.parseInt(a);
            int numberB = Integer.parseInt(b);
            sum = numberA + numberB;
        } else {
            String[] nA = a.split(",");
            String[] nB = b.split(",");
            for (int i = 0; i< nA.length;i++) {
                int numberA = Integer.parseInt(nA[i]);
                sum += numberA;
            }
//            System.out.println("Sum A: "+sum);
            for (int j = 0; j< nB.length;j++) {
                int numberB = Integer.parseInt(nB[j]);
                sum += numberB;
            }
        }
        System.out.println(sum);
        return sum;
    }
    protected String evalGrade(double grade) {
        if(grade >= 0.0 && grade <= 10.0) {
            if(grade < 5.0 ) {
                return "Poor";
            } else if(grade >= 5. && grade < 6.0) {
                return "Weak";
            } else if(grade >= 6. && grade < 7.0) {
                return "Average";
            } else if(grade >= 7. && grade < 8.0) {
                return "Pretty";
            } else if(grade >= 8. && grade < 9.0) {
                return "Good";
            } else {
                return "Excellent";
            }
        }
        return "Invalid";
    }
}
// 1,2,22,3