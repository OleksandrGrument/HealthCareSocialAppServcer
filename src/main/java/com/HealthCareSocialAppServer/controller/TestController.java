package com.HealthCareSocialAppServer.controller;

import com.HealthCareSocialAppServer.model.AppUser;
import com.HealthCareSocialAppServer.service.AppUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/test")
@SessionAttributes("roles")
public class TestController {

    @RequestMapping(value = "/employee", method = RequestMethod.GET)
    public ModelAndView generalMonthlyReport() {

        return new ModelAndView("employee", "appUser", new AppUser());
    }

    @Autowired
    AppUserService appUserService;

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public ModelAndView delete() {

        appUserService.deleteUserById((long)8);

        return new ModelAndView("404");
    }

    @RequestMapping(value = "/addContact", method = RequestMethod.POST)
    public String addContact(@ModelAttribute("appUser")
                                     AppUser appUser) {
        System.out.println("====TEST");

        System.out.println("ID: " + appUser.getId());
        System.out.println("email: " + appUser.getEmail());
        System.out.println("password: " + appUser.getPassword());
        //System.out.println("socialID "+ appUser.getSocialId());
        System.out.println("loginType: " + appUser.getLoginType());

        return "redirect:/test/employee";
    }
}
