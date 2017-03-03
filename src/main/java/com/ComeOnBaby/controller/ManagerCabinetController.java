package com.ComeOnBaby.controller;

import com.ComeOnBaby.model.AppUser;
import com.ComeOnBaby.service.AppUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
@RequestMapping("/cabinet")
@SessionAttributes("roles")
public class ManagerCabinetController {



    @Autowired
    AppUserService appUserService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView indexCabinet( ) {

        ModelAndView cabinetUsersList = new ModelAndView("managerCabinet");

        List<AppUser> users = appUserService.getAllUsers();

        cabinetUsersList.addObject("users" , users);

        return cabinetUsersList;
    }


    @RequestMapping(value = "/user-profile/{userId}" , method = RequestMethod.GET)
    public ModelAndView userProfile (@PathVariable Long userId) {

        ModelAndView userProfile = new ModelAndView("userProfile");

        AppUser user = appUserService.findById(userId);

        userProfile.addObject("user" , user);

        return userProfile;
    }

    @RequestMapping(value = "/basic-questions/{userId}" , method = RequestMethod.GET)
    public ModelAndView baseQuestions (@PathVariable Long userId){

        ModelAndView basicQuestions = new ModelAndView("basicQuestions");

        AppUser user = appUserService.findById(userId);

        basicQuestions.addObject("user" , user);

        return basicQuestions;
    }





}
