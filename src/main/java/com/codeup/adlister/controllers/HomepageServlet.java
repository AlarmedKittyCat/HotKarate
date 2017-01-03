package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "HomepageServlet", urlPatterns= "")
public class HomepageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Ad> ads = DaoFactory.getAdsDao().all();
        List<Ad> randomAds = new ArrayList<>();
        int[] randomNumbers;
        randomNumbers = new int[3];
        for(int i = 0; i < 3; i++){
            randomNumbers[i]= (int) Math.floor(Math.random() * ads.size());
        }
        for (int random : randomNumbers) {
            randomAds.add(ads.get(random));
        }

        request.setAttribute("ads", randomAds);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
