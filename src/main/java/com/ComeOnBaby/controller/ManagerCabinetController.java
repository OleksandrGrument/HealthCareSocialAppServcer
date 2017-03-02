package com.ComeOnBaby.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/cabinet")
@SessionAttributes("roles")
public class ManagerCabinetController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView indexCabinet( ) {



        return new ModelAndView("managerCabinet");
    }
}
