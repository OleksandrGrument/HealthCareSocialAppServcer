package com.ComeOnBaby.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/q-a")
@SessionAttributes("roles")
public class QuestionsAndAnswersController {

/*
    @RequestMapping(value = { "/" }, method = RequestMethod.GET)
    public ModelAndView questionAndAnswers(HttpSession session) {

        ModelAndView questionsAndAnswers = new ModelAndView();


    }

    */

}
