package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad_Category;

public interface Categories {
    void insert(Ad_Category ad_Category);
    String getStringOfCategories(long adId);
}
