package com.ComeOnBaby.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
@SessionAttributes("roles")
public class AdminController {

    @RequestMapping(value = "/manager-list", method = RequestMethod.GET)
    public ModelAndView managerListShow() {
        ModelAndView managerListShow = new ModelAndView("adminCabinet");

        return managerListShow;

    }
}
