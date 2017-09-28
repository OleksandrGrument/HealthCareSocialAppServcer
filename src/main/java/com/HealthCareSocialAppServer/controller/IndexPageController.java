package com.HealthCareSocialAppServer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


@Controller
@SessionAttributes("roles")
public class IndexPageController {

    @Autowired
    AuthenticationTrustResolver authenticationTrustResolver;


    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public ModelAndView loginPage() {

        if (isCurrentAuthenticationAnonymous()) {
            ModelAndView mainPage = new ModelAndView("index");

            return mainPage;
        } else {
            ModelAndView modelAndView = new ModelAndView("redirect:/list");
            return modelAndView;
        }
    }

    @RequestMapping(value = "/session_expired", method = RequestMethod.POST)
    public ModelAndView sessionExpired() {
        ModelAndView modelAndView = new ModelAndView("redirect:/main");

        modelAndView.addObject("isSessionExpired", new Boolean(true));

        return modelAndView;
    }

    /**
     * This method returns true if users is already authenticated [logged-in], else false.
     */
    private boolean isCurrentAuthenticationAnonymous() {
        final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authenticationTrustResolver.isAnonymous(authentication);
    }

}