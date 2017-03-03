package com.ComeOnBaby.controller;

import com.ComeOnBaby.model.AppUser;
import com.ComeOnBaby.service.AppUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
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










}
