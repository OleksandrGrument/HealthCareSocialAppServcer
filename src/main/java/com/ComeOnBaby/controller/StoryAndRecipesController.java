package com.ComeOnBaby.controller;


import com.ComeOnBaby.comparator.CommentByDateComparator;
import com.ComeOnBaby.enums.MainPathEnum;
import com.ComeOnBaby.model.AppUser;
import com.ComeOnBaby.model.Blog;
import com.ComeOnBaby.model.Comment;
import com.ComeOnBaby.service.AppUserService;
import com.ComeOnBaby.service.BlogService;
import com.ComeOnBaby.service.CommentsService;
import com.ComeOnBaby.util.SaveFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Set;


@Controller
@RequestMapping("/my")
@SessionAttributes("roles")
public class StoryAndRecipesController {

    @Autowired
    BlogService blogService;

    @RequestMapping(value = "/story", method = RequestMethod.GET)
    public ModelAndView mySuccessStory() {

        ModelAndView mySuccessStory = new ModelAndView("mySuccessStory");
        ArrayList<Blog> blogs = (ArrayList<Blog>) blogService.findBlogByType(3);
        mySuccessStory.addObject("title", "My Success story");
        mySuccessStory.addObject("blogs", blogs);
        return mySuccessStory;
    }

    @RequestMapping(value = "/recipes", method = RequestMethod.GET)
    public ModelAndView myRecipes() {

        ModelAndView myRecipes = new ModelAndView("mySuccessStory");
        ArrayList<Blog> blogs = (ArrayList<Blog>) blogService.findBlogByType(2);
        myRecipes.addObject("blogs", blogs);
        myRecipes.addObject("title", "My Recipes");
        return myRecipes;
    }

    @RequestMapping(value = "/husband", method = RequestMethod.GET)
    public ModelAndView myHusband() {

        ModelAndView myHusband = new ModelAndView("mySuccessStory");
        ArrayList<Blog> blogs = (ArrayList<Blog>) blogService.findBlogByType(4);
        myHusband.addObject("title", "Husband Story");
        myHusband.addObject("blogs", blogs);
        return myHusband;
    }


    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView editBlog(@PathVariable Long id) {

        ModelAndView editBlog = new ModelAndView("mySuccessStoryEdit");

        Blog blog = blogService.findById(id);

        editBlog.addObject("isNew", false);
        editBlog.addObject("blog", blog);

        return editBlog;
    }

    @RequestMapping(value = "/delete/{id}" , method = RequestMethod.GET)
    public ModelAndView deleteBlog(@PathVariable Long id){
        Blog blog = blogService.findById(id);

        ModelAndView listBlogs = new ModelAndView("redirect:/my/" +getBlogType(blog));

            blogService.deleteBlog(blog);

        return listBlogs;
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public ModelAndView newBlog() {

        ModelAndView newBlog = new ModelAndView("mySuccessStoryEdit");

        newBlog.addObject("isNew", true);

        return newBlog;

    }

    @RequestMapping(value = "/save-new-story", method = RequestMethod.POST)
    public ModelAndView saveNewStory(@RequestParam(value = "id") String id, @RequestParam("title") String title, @RequestParam("filePicture[]") MultipartFile[] files) {

        Blog blog = new Blog();

        if (id.equals("")) {


            blog.setDatetime(new Date());
            blog.setTitle(title);


            //Save to file

            if (!files[0].isEmpty()) {
                String pathToSaveFile = "pictures/";
                SaveFile saveFile = new SaveFile(pathToSaveFile, files);
                saveFile.saveFile();
                /*
                fertilizationGuide.setImage(MainPathEnum.mainWebPath + "show-image/" + files[0].getOriginalFilename() + "/");*/
                blogService.addNewBlog(blog);
            }

        } else {

            blog = blogService.findById(Long.valueOf(id));

            blog.setDatetime(new Date());
            blog.setTitle(title);

            //Save to file
            if (files.length != 0) {
                if (!files[0].isEmpty()) {
                    String pathToSaveFile = "pictures/";
                    SaveFile saveFile = new SaveFile(pathToSaveFile, files);
                    saveFile.saveFile();
                    /*fertilizationGuide.setImage(MainPathEnum.mainWebPath + "show-image/" + files[0].getOriginalFilename() + "/");*/
                }
            }
            blogService.updateBlog(blog);
        }

        return new ModelAndView("redirect:/my/" +getBlogType(blog));
    }


    @Autowired
    CommentsService commentsService;

    @RequestMapping(value = "/comments/{id}", method = RequestMethod.GET)
    public ModelAndView comments(@PathVariable Long id) {

        ModelAndView comments = new ModelAndView("mySuccessStoryComments");

        Blog blog = blogService.findById(id);

        Set<Comment> commentsUnsorted = blog.getComments();
        ArrayList<Comment> commentsSorted = new ArrayList<>(commentsUnsorted);

        Collections.sort(commentsSorted, new CommentByDateComparator());

        comments.addObject("blog", blog);
        comments.addObject("comments", commentsSorted);

        return comments;

    }

    @Autowired
    AppUserService appUserService;

    @RequestMapping(value = "/write-comment", method = RequestMethod.POST)
    public ModelAndView writeComment(@RequestParam("id") Long blogId, @RequestParam("text") String commentsText) {
        ModelAndView comments = new ModelAndView("redirect:/my/comments/" + blogId);

        Blog blog = blogService.findById(blogId);
        Set<Comment> commentsSet = blog.getComments();

        //find Admin AppUser
        AppUser appUser = appUserService.findById((long) 1);

        //create Comment
        Comment comment = new Comment();
        comment.setBlog(blog);
        comment.setAppUser(appUser);
        comment.setDatetime(new Date());
        comment.setText(commentsText);
        commentsService.addNewComments(comment);

        //add Comment to Blog
        commentsSet.add(comment);
        blog.setComments(commentsSet);
        blogService.updateBlog(blog);


        return comments;
    }

    @RequestMapping(value = "/delete-comment/{id}/{blogId}", method = RequestMethod.GET)
    public ModelAndView deleteComment(@PathVariable Long id, @PathVariable Long blogId) {

        ModelAndView comments = new ModelAndView("redirect:/my/comments/" + blogId);

        Comment comment = commentsService.findCommentById(id);
        commentsService.deleteComments(comment);

        return comments;
    }

    private String getBlogType(Blog blog){

        int type = blog.getType();
        String path = "";
        switch(type) {
            case 2:
                path="recipes";
                break;
            case 3:
                path="story";
                break;
            case 4:
                path="husband";
                break;
        }
        return path;
    }

}
