package com.ComeOnBaby.controller;


import com.ComeOnBaby.model.Notice;
import com.ComeOnBaby.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
@RequestMapping("/notice")
@SessionAttributes("roles")
public class NoticeEventController {


    @Autowired
    NoticeService noticeService;


    @RequestMapping(value = "/events", method = RequestMethod.GET)
    public ModelAndView noticeEvents() {
        ModelAndView noticeEvents = new ModelAndView("noticeEvent");

        ArrayList<Notice> notices = (ArrayList<Notice>) noticeService.getAllNotice();

        noticeEvents.addObject("notices", notices);

        return noticeEvents;
    }

}
/*


    @RequestMapping(value = "/add-recipe", method = RequestMethod.GET)
    public ModelAndView addRecipe() {
        ModelAndView addRecipe = new ModelAndView("featuredRecipesEdit");
        addRecipe.addObject("isNew", true);
        return addRecipe;
    }

    @RequestMapping(value = "/edit-recipe/{recipeId}", method = RequestMethod.GET)
    public ModelAndView editRecipe(@PathVariable Long recipeId) {
        ModelAndView editRecipe = new ModelAndView("featuredRecipesEdit");

        RecipeGuide recipeGuide = recipeGuideService.getRecipeGuideById(recipeId);

        editRecipe.addObject("isNew", false);
        editRecipe.addObject("recipeGuide", recipeGuide);

        return editRecipe;

    }

    @RequestMapping(value = "/save-new-recipe", method = RequestMethod.POST)
    public ModelAndView saveNewRecipe(@RequestParam(value = "id") String id, @RequestParam("title") String title, @RequestParam("url") String naverUrl, @RequestParam("filePicture[]") MultipartFile[] files) {

        if (id.equals("")) {

            RecipeGuide recipeGuide = new RecipeGuide();

            recipeGuide.setDate(new Date());
            recipeGuide.setTitle(title);
            recipeGuide.setUrlNaver(naverUrl);

            //Save to file

            if (!files[0].isEmpty()) {
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
            if (files.length != 0) {
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

    @RequestMapping(value = "/delete-recipe/{id}", method = RequestMethod.GET)
    public ModelAndView deleteRecipe(@PathVariable Long id) {

        RecipeGuide recipeGuide = recipeGuideService.getRecipeGuideById(id);

        recipeGuideService.deleteRecipeGuide(recipeGuide);

        return new ModelAndView("redirect:/guide/featured-recipes");
    }

    *//*



}
*/
