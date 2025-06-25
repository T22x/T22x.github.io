package com.example;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "RequestLoggingFilter", value = "/*")
public class RequestLoggingFilter extends HttpServlet {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("RequestLoggingFilter initialized.");
    }

    @Override
    protected void doFilter(ServletRequest request, ServletResponse response,FilterChain chain) throws IOException,ServletException{
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        System.out.println("Request received for:" + httpRequest.getRequestURI());
        chain.doFilter(request,response);
        System.out.println("Request processed for:" + httpRequest.getRequestURI());

    }

    @Override
    public void destroy() {
        System.out.println("RequestLoggingFilter destroyed.");
    }
}
