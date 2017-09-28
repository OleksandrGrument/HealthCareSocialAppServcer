package com.HealthCareSocialAppServer.controller;


import com.HealthCareSocialAppServer.model.PushEvent;
import com.HealthCareSocialAppServer.service.GoogleCloudMessageService;
import com.HealthCareSocialAppServer.service.NoticeService;
import com.HealthCareSocialAppServer.service.NotificationService;
import com.HealthCareSocialAppServer.service.PushEventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/push")
@SessionAttributes("roles")
public class PushController {

    @Autowired
    PushEventService pushEventService;

    @RequestMapping(value = "/notification", method = RequestMethod.GET)
    public ModelAndView noticeEvents( @RequestParam(value = "isSuccess" , required=false) Boolean isSuccess ,
                                      @RequestParam(value = "isFalse" , required = false)Boolean isFalse) {

        ModelAndView pushNotification = new ModelAndView("pushNotifications");

        List<PushEvent> pushEvents = pushEventService.getAllPushEvents();

        pushNotification.addObject("pushEvents" , pushEvents);

        pushNotification.addObject("isSuccess" , isSuccess);
        pushNotification.addObject("isFalse" , isFalse);

        return pushNotification;
    }

    @Autowired
    NotificationService notificationService;

    @Autowired
    NoticeService noticeService;

    @Autowired
    GoogleCloudMessageService googleCloudMessageService;

    @RequestMapping(value = "/send", method = RequestMethod.POST)
    public ModelAndView sendPush (@RequestParam("id") Long id , @RequestParam("notificationText") String notificationText){

        ModelAndView pushNotification = new ModelAndView("redirect:/push/notification");

        if (noticeService.get(id) !=null){

            // Save to DB push event
            PushEvent pushEvent = new PushEvent();
            pushEvent.setNoticeId(id);
            pushEvent.setNotificationText(notificationText);
            pushEvent.setQuestionDate(new Date());
            pushEventService.addNewPushEvent(pushEvent);

            //
            List<String> keys = googleCloudMessageService.getAllKeys();

            notificationService.pushNotificationToGCM(keys , notificationText);


            pushNotification.addObject("isSuccess", true);
        } else {
            pushNotification.addObject("isFalse", true);
        }



        return pushNotification;
    }

}
