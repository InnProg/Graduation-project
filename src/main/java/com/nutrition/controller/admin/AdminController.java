package com.nutrition.controller.admin;

import com.nutrition.entity.client.Client;
import com.nutrition.entity.User;
import com.nutrition.service.ClientService;
import com.nutrition.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private ClientService clientService;

    @GetMapping("/admin")
    public String userList(Model model) {
        model.addAttribute("allUsers", userService.allUsers());
        return "admin";
    }

    @PostMapping("/admin")
    public String deleteUser(@RequestParam(required = true, defaultValue = "" ) Long userId,
                             @RequestParam(required = true, defaultValue = "" ) String action,
                             Model model){

        if (action.equals("delete")){
            if(userService.findUserById(userId).getRoles().iterator().next().getName().equals("ROLE_USER")) {
                Client client = clientService.findClientByUserId(userId);
                clientService.deleteClient(client.getId());
            }
            userService.deleteUser(userId);
        }
        return "redirect:/admin";
    }

    @GetMapping("/users")
    public String getSettings(Model model) {
        model.addAttribute("userFormAdmin", new User());
        return "users";
    }

    @PostMapping("/users")
    public String addUser(@ModelAttribute("userFormAdmin") @Valid User userFormAdmin,
                          BindingResult bindingResult,
                          Model model) {

        if (bindingResult.hasErrors()) {
            return "users";
        }
        if (!userFormAdmin.getPassword().equals(userFormAdmin.getPasswordConfirm())){
            model.addAttribute("passwordError", "Пароли не совпадают");
            return "users";
        }
        if (!userService.saveUser(userFormAdmin)){
            model.addAttribute("usernameError", "Пользователь с таким именем уже существует");
            return "users";
        }
        return "redirect:/admin";
    }

}
