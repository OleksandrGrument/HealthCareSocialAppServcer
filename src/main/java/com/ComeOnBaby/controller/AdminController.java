package com.ComeOnBaby.controller;

import com.ComeOnBaby.model.User;
import com.ComeOnBaby.model.UserProfile;
import com.ComeOnBaby.model.UserProfileType;
import com.ComeOnBaby.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

@Controller
@RequestMapping("/admin")
@SessionAttributes("roles")
public class AdminController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/manager-list", method = RequestMethod.GET)
    public ModelAndView managerListShow() {
        ModelAndView managerListShow = new ModelAndView("adminCabinet");

        List<User> allUsers = userService.findAllUsers();
        List<User> managerList = new ArrayList<>();

        for(User user : allUsers){
            Set profiles = user.getUserProfiles();
            UserProfile userProfile = null;
            Iterator iterator = profiles.iterator();
            while (iterator.hasNext()) {
                userProfile = (UserProfile) iterator.next();
            }
            if (userProfile!=null && userProfile.getType().equals("MANAGER")){
                managerList.add(user);
            }
        }
        managerListShow.addObject("managerList", managerList);

        return managerListShow;
    }

    @RequestMapping(value = "/addNewManager", method = RequestMethod.GET)
    public ModelAndView addNewManager() {
        ModelAndView addNewManager = new ModelAndView("adminManagersEdit");
        addNewManager.addObject("isNew", true);
        return addNewManager;
    }

    @RequestMapping(value = "/managerEdit/{managerId}", method = RequestMethod.GET)
    public ModelAndView managerEdit(@PathVariable int managerId) {
        ModelAndView managerEdit = new ModelAndView("adminManagersEdit");
        User manager = userService.findById(managerId);

        managerEdit.addObject("manager", manager);
        managerEdit.addObject("isNew", false);

        return managerEdit;
    }

    @RequestMapping(value = "/saveManager", method = RequestMethod.POST)
    public ModelAndView saveManager(@RequestParam(value = "id") String id,
                                    @RequestParam("login") String login,
                                    @RequestParam("email") String email,
                                    @RequestParam("password") String password,
                                    @RequestParam("confirm_password") String confirmPassword) {

        User manager;

        if (id.equals("")){
            manager = new User();
            manager.setEmail(email);
            manager.setSsoId(login);
            if (password.equals(confirmPassword)){
                manager.setPassword(password);
            }

            UserProfile userProfile = new UserProfile();

            userProfile.setType(UserProfileType.MANAGER.toString());
            userProfile.setId(3);

            Set<UserProfile> userProfiles = new HashSet<>();
            userProfiles.add(userProfile);

            manager.setUserProfiles(userProfiles);

            userService.saveUser(manager);
        }else {
            manager = userService.findById(Integer.valueOf(id));
            manager.setEmail(email);
            manager.setSsoId(login);
            if (password.equals(confirmPassword)){
                manager.setPassword(password);
            }
            userService.updateUser(manager);
        }

        return new ModelAndView("redirect:/admin/managerEdit/"+manager.getId());
    }

    @RequestMapping(value = "/managerDelete/{managerId}", method = RequestMethod.GET)
    public ModelAndView managerDelete(@PathVariable int managerId) {

        User manager = userService.findById(managerId);
        userService.deleteUserBySSO(manager.getSsoId());
        return new ModelAndView("redirect:/admin/manager-list");
    }
}
