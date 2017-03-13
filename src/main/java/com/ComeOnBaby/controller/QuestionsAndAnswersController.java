package com.ComeOnBaby.controller;

import com.ComeOnBaby.model.QuestionAnswer;
import com.ComeOnBaby.service.QuestionAnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.ArrayList;
import java.util.Date;

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



    @RequestMapping(value = "/response-question-answer/{qaId}", method = RequestMethod.GET)
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



    @RequestMapping(value = "/answer-the-question", method = RequestMethod.POST)
    public ModelAndView answerQa(@RequestParam(value = "id") Long id , @RequestParam("answerText") String answerText){


        QuestionAnswer questionAnswer = questionAnswerService.getQuestionAnswerById(id);

        questionAnswer.setIsAnswered(true);
        questionAnswer.setAnswerDate(new Date());
        questionAnswer.setAnswerText(answerText);

        questionAnswerService.updateQuestionAnswer(questionAnswer);

        return new ModelAndView("redirect:/q-a/response-question-answer/"+id.toString());
    }


}
