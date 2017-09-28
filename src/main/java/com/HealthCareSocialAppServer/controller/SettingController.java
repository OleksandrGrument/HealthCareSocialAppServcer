package com.HealthCareSocialAppServer.controller;

import com.HealthCareSocialAppServer.model.User;
import com.HealthCareSocialAppServer.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/setting")
@SessionAttributes("roles")
public class SettingController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView managerSetting(HttpSession httpSession) {
        ModelAndView userSettings = new ModelAndView("userSettings");

        int userId = (Integer) httpSession.getAttribute("UserId");
        User userManager = userService.findById(userId);

        userSettings.addObject("userManager", userManager);
        return userSettings;
    }

    @RequestMapping(value = "/saveSetting", method = RequestMethod.POST)
    public ModelAndView saveSetting(HttpSession httpSession, @RequestParam("email_notifications") String emailNotifications,
                                    @RequestParam("password") String password,
                                    @RequestParam("confirm_password") String confirmPassword) {

        ModelAndView saveSetting = new ModelAndView("userSettings");

        int userId = (Integer) httpSession.getAttribute("UserId");
        User userManager = userService.findById(userId);


        if (!emailNotifications.equals(userManager.getEmail())) {
            System.out.println("======change mail!!!");
            userManager.setEmail(emailNotifications);
            userService.updateUser(userManager);
            saveSetting.addObject("message", "success");
        }

        if (!password.equals("")) {
            if (password.equals(confirmPassword)) {
                userManager.setPassword(password);
                userService.updateUser(userManager);
                saveSetting.addObject("message", "success");
            }
        }

        saveSetting.addObject("userManager", userManager);
        return saveSetting;
    }
}
