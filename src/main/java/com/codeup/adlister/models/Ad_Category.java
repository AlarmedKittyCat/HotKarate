package com.codeup.adlister.models;

import java.util.ArrayList;
import java.util.List;

public class Ad_Category {
    private long adId;
    private List<Long> categories;

    public Ad_Category(Long adId, List<Long> categories ) {
        this.adId = adId;
        this.categories = categories;
    }

    public long getAdId() { return adId;}

    public void setAdId(long adId) { this.adId = adId;}

    public List<Long> getCategories() { return categories;}

    public void setCategories(List<Long> categories) { this.categories = categories;}
}
