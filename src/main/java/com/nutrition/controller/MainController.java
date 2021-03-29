package com.nutrition.controller;

import com.nutrition.entity.User;
import com.nutrition.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/forgot")
    public String forgotPassword() {
        return "forgotPassword";
    }



}
