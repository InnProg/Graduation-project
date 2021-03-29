package com.nutrition.controller;

import com.nutrition.entity.Role;
import com.nutrition.entity.User;
import com.nutrition.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Collection;
import java.util.List;
import java.util.Set;

@Controller
public class IndexController {

    @Autowired
    UserService userService;

    @Autowired
    HttpSession session;

    @GetMapping("/index")
    public String getIndex(HttpServletRequest request) {


        String path = null;
        session = request.getSession();
        String login = request.getUserPrincipal().getName();
        User user = userService.findUserByUsername(login);

        if (user.getRoles().iterator().next().getName().equals("ROLE_CLIENT")){
            path = "/client";
            session.setAttribute("path", path);
        }
        else if(user.getRoles().iterator().next().getName().equals("ROLE_SPECIALIST")){
            path = "/accountDoc";
            session.setAttribute("path", path);
        }
        else if(user.getRoles().iterator().next().getName().equals("ROLE_ADMIN")){
            path = "/admin";
            session.setAttribute("path", path);
        }


        return "index";
    }
}
