package com.starshot.controller;

import com.starshot.domain.User;
import com.starshot.service.AuthenticationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @Autowired
    AuthenticationService authenticationService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String index() {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String performLogin(ModelMap model, @RequestParam String username,
                               @RequestParam String password) {

        if (!authenticationService.performLogin(new User(username, password))) {
            model.put("errorMessage", "Invalid Credentials");
            return "login";
        }
        return "redirect:/timeRecord";
    }
}
