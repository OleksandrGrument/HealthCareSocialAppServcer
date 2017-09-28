package com.HealthCareSocialAppServer.dao;


import com.HealthCareSocialAppServer.model.RecipeGuide;

import java.util.List;


public interface RecipeGuideDao {

    Long create(RecipeGuide recipe_guides);

    RecipeGuide read(Long id);

    void update(RecipeGuide recipe_guides);

    void delete(RecipeGuide recipe_guides);

    List<RecipeGuide> findAll();
}
