package com.ComeOnBaby.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/report")
@SessionAttributes("roles")
public class GeneralReportController {

    @RequestMapping(value = "/generalMonthlyReport", method = RequestMethod.GET)
    public ModelAndView generalMonthlyReport() {

        ModelAndView generalMonthlyReport = new ModelAndView("generalMonthlyReport");

        return generalMonthlyReport;
    }

    @RequestMapping(value = "/generalWeeklyReport", method = RequestMethod.GET)
    public ModelAndView generalWeeklyReport() {

        ModelAndView generalWeeklyReport = new ModelAndView("generalWeeklyReport");

        return generalWeeklyReport;
    }
}
