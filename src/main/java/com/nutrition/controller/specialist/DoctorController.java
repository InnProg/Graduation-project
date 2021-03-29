package com.nutrition.controller.specialist;

import com.nutrition.service.ClientService;
import com.nutrition.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DoctorController {

    @Autowired
    private UserService userService;

    @Autowired
    private ClientService clientService;

    /*
    @GetMapping("/accountDoc")
    public String userList(Model model) {
        model.addAttribute("allUsers", userService.allUsers());
        return "accountDoctor";
    }
*/
    @GetMapping("/accountDoc")
    public String patientList(Model model) {
        model.addAttribute("allPatients", clientService.allClients());

        return "accountDoctor";
    }

    /*
    @PostMapping("/accountDoc")
    public String deleteUser(@RequestParam(required = true, defaultValue = "" ) Long userId,
                             @RequestParam(required = true, defaultValue = "" ) String action, Model model){

        if (action.equals("delete")){
            userService.deleteUser(userId);
        }
        return "redirect:/accountDoc";
    }
*/

    @PostMapping("/accountDoc")
    public String deletePatient(@RequestParam(required = true, defaultValue = "" ) Long clientId,
                                @RequestParam(required = true, defaultValue = "" ) Long userId,
                             @RequestParam(required = true, defaultValue = "" ) String action, Model model){

        if (action.equals("delete")){
            clientService.deleteClient(clientId);
            userService.deleteUser(userId);
        }
        return "redirect:/accountDoc";
    }


    /*
    @GetMapping("/accountDoc/{userId}")
    public String gtUser(@PathVariable("userId") Long userId, Model model) {
        model.addAttribute("allUsers", userService.usergtList(userId));
        return "accountDoctor";
    }
*/
}
