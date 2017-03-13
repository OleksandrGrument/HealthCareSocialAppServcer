package com.ComeOnBaby.controller;


import com.ComeOnBaby.model.Notice;
import com.ComeOnBaby.model.QuestionAnswer;
import com.ComeOnBaby.service.QuestionAnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
@RequestMapping("/q-a")
@SessionAttributes("roles")
public class QuestionsAndAnswersController {

    @Autowired
    QuestionAnswerService questionAnswerService;

    @RequestMapping(value = { "/list" }, method = RequestMethod.GET)
    public ModelAndView questionAndAnswers() {

        ModelAndView questionsAndAnswers = new ModelAndView("questionAndAnswer");

        ArrayList<QuestionAnswer> questionAnswers = (ArrayList<QuestionAnswer>) questionAnswerService.getAllQuestionAnswers();

        questionsAndAnswers.addObject("questionAnswers" , questionAnswers);

        return questionsAndAnswers;
    }



    @RequestMapping(value = "/edit-question-answer/{qaId}", method = RequestMethod.GET)
    public ModelAndView editQa(@PathVariable Long qaId) {
        ModelAndView editQa = new ModelAndView("questionAndAnswerEdit");

        QuestionAnswer questionAnswer = questionAnswerService.getQuestionAnswerById(qaId);





        editQa.addObject("questionAnswer", questionAnswer);
        return editQa;
    }



    @RequestMapping(value = "/delete-question-answer/{id}", method = RequestMethod.GET)
    public ModelAndView deleteQa(@PathVariable Long id) {

        QuestionAnswer questionAnswer = questionAnswerService.getQuestionAnswerById(id);

        questionAnswerService.deleteQuestionAnswer(questionAnswer);

        return new ModelAndView("redirect:/q-a/list");
    }



}
