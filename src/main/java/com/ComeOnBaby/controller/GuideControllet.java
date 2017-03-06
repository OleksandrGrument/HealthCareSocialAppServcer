package com.ComeOnBaby.controller;

import com.ComeOnBaby.model.AppUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/cabinet")
@SessionAttributes("roles")
public class GuideControllet {

    @RequestMapping(value = "/guide", method = RequestMethod.GET)
    public ModelAndView indexCabinet() {

        ModelAndView guide = new ModelAndView("guide");

        return guide;
    }

}
