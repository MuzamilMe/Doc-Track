package com.example.project;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/Home",name = "Home")
public class Home extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        RequestDispatcher rd = request.getRequestDispatcher("about.jsp");
        rd.include(request,response);

    }
    public static void main(String[] args) {
        Home h = new Home();
    }
}
