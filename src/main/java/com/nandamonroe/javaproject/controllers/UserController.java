package com.nandamonroe.javaproject.controllers;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nandamonroe.javaproject.models.User;
import com.nandamonroe.javaproject.services.UserService;
import com.nandamonroe.javaproject.validator.UserValidator;

import jakarta.validation.Valid;

@Controller
public class UserController {

	private UserService userService;

    private UserValidator userValidator;
    
    public UserController(UserService userService, UserValidator userValidator) {
        this.userService = userService;
        this.userValidator = userValidator;
    }

    @RequestMapping("/register")
    public String registerForm(Model model) {

        model.addAttribute("user", new User());

        return "regPage.jsp";
    }
    
    @PostMapping("/register")
    public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {
        userValidator.validate(user, result);
        if (result.hasErrors()) {
            return "regPage.jsp";
        }
        System.out.println("THIS IS THE NEW USER --------" + user);
        userService.saveUserWithAdminRole(user);
        return "redirect:/login";
    }

    @RequestMapping(value = {"/", "/dashboard"})
    public String home(Principal principal, Model model) {
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        return "emp_dashboard.jsp";
    }
    
    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required=false) String error, @RequestParam(value="logout", required=false) String logout, Model model) {
        System.out.println(error);
        if(error != null) {
            model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
        }
        if(logout != null) {
            model.addAttribute("logoutMessage", "Logout Successful!");
        }
        return "loginPage.jsp";
    }
    
}
