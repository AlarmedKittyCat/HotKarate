package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static java.lang.Integer.parseInt;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        if(id != null) {
            Ad ad = DaoFactory.getAdsDao().getAdById(parseInt(id));
            request.setAttribute("ad", ad);
            request.setAttribute("user", DaoFactory.getUsersDao().findById(ad.getUserId()));
            request.setAttribute("categories", DaoFactory.getCategoriesDao().getStringOfCategories(ad.getId()));
            request.getRequestDispatcher("/WEB-INF/ads/show.jsp").forward(request, response);
        }


        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}
