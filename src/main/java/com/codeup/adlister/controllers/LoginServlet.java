package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean validAttempt = false;

        User userObject = null;

        // TODO: find a record in your database that matches the submitted password

        // TODO: make sure we find a user with that username
        if (username.equals("") || password.equals("")) {
            response.sendRedirect("/login?error=2");
            return;
        }

        userObject = DaoFactory.getUsersDao().findByUsername(username);

        // TODO: check the submitted password against what you have in your database
        if (userObject != null) {
            if (userObject.getPassword().equals(password)) {
                validAttempt = true;
            }
        } else {
            response.sendRedirect("/login?error=3");
            return;
        }

        if (validAttempt) {
            // TODO: store the logged in user object in the session, instead of just the username
            request.getSession().setAttribute("user", username);
            request.getSession().setAttribute("userObject", userObject);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login?error=4");
        }
    }
}
