package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad_Category;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLCategoriesDao implements Categories {
    private Connection connection = null;
    public MySQLCategoriesDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    public void insert(Ad_Category Ad_Category) {
        try {
            for (Long category : Ad_Category.getCategories()){
                String insertQuery = "INSERT INTO ad_categories(ad_id, category_id) VALUES(?, ?)";
                PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
                stmt.setLong(1, Ad_Category.getAdId());
                stmt.setLong(2, category);
                stmt.executeUpdate();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public String getStringOfCategories(long adId){
        String adCategories = "Categories:";
        String query = "SELECT category " +
                "FROM ad_categories " +
                "LEFT JOIN ads ON ad_categories.ad_id = ads.id " +
                "JOIN categories ON ad_categories.category_id = categories.id where ads.id = ?;";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, adId);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                adCategories += " " + rs.getString(1);
            }
            if (adCategories.equals("")){
                adCategories = "Other";
            }
            return adCategories;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
