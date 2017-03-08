package com.ComeOnBaby.controller;



import com.ComeOnBaby.comparator.CommentByDateComparator;
import com.ComeOnBaby.model.Blog;
import com.ComeOnBaby.model.Comment;
import com.ComeOnBaby.service.BlogService;
import com.ComeOnBaby.service.CommentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Collections;
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
        mySuccessStory.addObject("title" , "My Success story");
        mySuccessStory.addObject("blogs" , blogs);
        return mySuccessStory;
    }

    @RequestMapping(value = "/recipes" , method = RequestMethod.GET)
    public ModelAndView myRecipes(){

        ModelAndView myRecipes = new ModelAndView("mySuccessStory");
        ArrayList<Blog> blogs = (ArrayList<Blog>) blogService.findBlogByType(2);
        myRecipes.addObject("blogs" , blogs);
        myRecipes.addObject("title" , "My Recipes");
        return myRecipes;
    }

    @RequestMapping(value = "/husband" , method = RequestMethod.GET)
    public ModelAndView myHusband(){

        ModelAndView myHusband = new ModelAndView("mySuccessStory");
        ArrayList<Blog> blogs = (ArrayList<Blog>) blogService.findBlogByType(4);
        myHusband.addObject("title" , "Husband Story");
        myHusband.addObject("blogs" , blogs);
        return myHusband;
    }


    @RequestMapping(value = "/edit/{id}" , method = RequestMethod.GET)
    public ModelAndView editBlog (@PathVariable Long id) {

        ModelAndView editBlog = new ModelAndView("mySuccessStoryEdit");

        Blog blog = blogService.findById(id);

        editBlog.addObject("isNew" , false);
        editBlog.addObject("blog" , blog);

        return editBlog;
    }

    @RequestMapping(value = "/new" , method = RequestMethod.GET)
    public ModelAndView newBlog (){

        ModelAndView newBlog = new ModelAndView("mySuccessStoryEdit");

        newBlog.addObject("isNew" , true);

        return newBlog;

    }

    @Autowired
    CommentsService commentsService;

    @RequestMapping(value = "/comments/{id}" , method = RequestMethod.GET)
    public ModelAndView comments (@PathVariable Long id) {

        ModelAndView comments = new ModelAndView("mySuccessStoryComments");

        Blog blog = blogService.findById(id);

        Set<Comment> commentsUnsorted = blog.getComments();
        ArrayList <Comment> commentsSorted = new ArrayList<>(commentsUnsorted);

        Collections.sort(commentsSorted,new CommentByDateComparator());

        comments.addObject("comments" , commentsSorted);

        return comments;

    }







}
