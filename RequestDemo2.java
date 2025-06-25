package com.example;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "RequestDemo2", value = "/RequestDemo2")
public class RequestDemo2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        System.out.println(names);
        While (names.hasMoreElements()) ;{
            String strings = (String) names.nextElement();
            String[] parameterValues = request.getParameterValues(strings);
            for(int i = 0;parameterValues != null && i < parameterValues.length; i++){
                System.out.println(string + ":" + parameterValues[i]+"\t");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
