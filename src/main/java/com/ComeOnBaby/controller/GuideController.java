package com.ComeOnBaby.controller;

import com.ComeOnBaby.enums.MainPathEnum;
import com.ComeOnBaby.model.RecipeGuide;
import com.ComeOnBaby.service.RecipeGuideService;
import com.ComeOnBaby.util.SaveFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Date;

@Controller
@RequestMapping("/guide")
@SessionAttributes("roles")
public class GuideController {

    @Autowired
    RecipeGuideService recipeGuideService;

    @RequestMapping(value = "/featured-recipes", method = RequestMethod.GET)
    public ModelAndView featuredRecipes() {
        ModelAndView featuredRecipes = new ModelAndView("featuredRecipes");

        ArrayList<RecipeGuide> recipeGuides = (ArrayList<RecipeGuide>) recipeGuideService.getAllRecipeGuide();

        featuredRecipes.addObject("recipeGuide",recipeGuides);

        return featuredRecipes;
    }


    @RequestMapping(value = "/add-recipe" , method = RequestMethod.GET)
    public ModelAndView addRecipe(){
        ModelAndView addRecipe = new ModelAndView("featuredRecipesEdit");
        addRecipe.addObject("isNew" , true);
        return addRecipe;
    }

    @RequestMapping(value = "/edit-recipe/{recipeId}" , method = RequestMethod.GET)
    public ModelAndView editRecipe(@PathVariable Long recipeId){
        ModelAndView editRecipe = new ModelAndView("featuredRecipesEdit");

        RecipeGuide recipeGuide = recipeGuideService.getRecipeGuideById(recipeId);

        editRecipe.addObject("isNew" , false);
        editRecipe.addObject("recipeGuide" , recipeGuide);

        return editRecipe;

    }

    @RequestMapping(value = "/save-new-recipe" , method = RequestMethod.POST)
    public ModelAndView saveNewRecipe (@RequestParam(value = "id") String id ,@RequestParam("title") String title, @RequestParam("url") String naverUrl, @RequestParam("filePicture[]") MultipartFile[] files){

        if(id.equals("")) {

            RecipeGuide recipeGuide = new RecipeGuide();

            recipeGuide.setDate(new Date());
            recipeGuide.setTitle(title);
            recipeGuide.setUrlNaver(naverUrl);

            //Save to file

            if (!files[0].isEmpty() ) {
                String pathToSaveFile = "pictures/";
                SaveFile saveFile = new SaveFile(pathToSaveFile, files);
                saveFile.saveFile();
                recipeGuide.setImageThumbnail(MainPathEnum.mainWebPath + "show-image/" + files[0].getOriginalFilename() + "/");
                recipeGuideService.addNewRecipeGuide(recipeGuide);
            }

        } else {

            RecipeGuide recipeGuide = recipeGuideService.getRecipeGuideById(Long.valueOf(id));

            recipeGuide.setDate(new Date());
            recipeGuide.setTitle(title);
            recipeGuide.setUrlNaver(naverUrl);

            //Save to file
            if (files.length !=0) {
                if (!files[0].isEmpty()) {
                    String pathToSaveFile = "pictures/";
                    SaveFile saveFile = new SaveFile(pathToSaveFile, files);
                    saveFile.saveFile();
                    recipeGuide.setImageThumbnail(MainPathEnum.mainWebPath + "show-image/" + files[0].getOriginalFilename() + "/");
                }
            }
            recipeGuideService.updateRecipeGuide(recipeGuide);
        }

        return new ModelAndView("redirect:/guide/featured-recipes");
    }


}
