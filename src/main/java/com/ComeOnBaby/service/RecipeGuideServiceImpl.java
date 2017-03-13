package com.ComeOnBaby.service;

import com.ComeOnBaby.dao.RecipeGuideDao;
import com.ComeOnBaby.model.RecipeGuide;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("recipeGuideService")
public class RecipeGuideServiceImpl implements RecipeGuideService {

    private RecipeGuideDao recipeGuideDao;

    @Autowired(required = true)
    public void setCaseDao(RecipeGuideDao recipeGuideDao) {
        this.recipeGuideDao = recipeGuideDao;
    }

    @Override
    @Transactional
    public void addNewRecipeGuide(RecipeGuide recipeGuide) {
        recipeGuideDao.create(recipeGuide);
    }

    @Override
    @Transactional
    public void updateRecipeGuide(RecipeGuide recipeGuide) {
        recipeGuideDao.update(recipeGuide);
    }

    @Override
    @Transactional
    public void deleteRecipeGuide(RecipeGuide recipeGuide) {
        recipeGuideDao.delete(recipeGuide);
    }

    @Override
    @Transactional(readOnly = true)
    public List<RecipeGuide> getAllRecipeGuide() {
        return recipeGuideDao.findAll();
    }

    @Override
    @Transactional
    public RecipeGuide getRecipeGuideById(long id) {
        return recipeGuideDao.read(id);
    }
}