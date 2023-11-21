package com.nandamonroe.javaproject.controllers;

import java.security.Principal;
// import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nandamonroe.javaproject.models.Department;
import com.nandamonroe.javaproject.models.User;
import com.nandamonroe.javaproject.services.DepartmentService;
import com.nandamonroe.javaproject.services.UserService;
import com.nandamonroe.javaproject.validator.UserValidator;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class MainController {

    @Autowired
    DepartmentService departmentService;

	private UserService userService;

    private UserValidator userValidator;

    public MainController(UserService userService, UserValidator userValidator) {
        this.userService = userService;
        this.userValidator = userValidator;
    }

    @RequestMapping("/admin/dashboard")
    public String home(Principal principal, Model model) {
        
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        return "admin/dashboard.jsp";
    }

    @RequestMapping("/admin/add/employee")
    public String addEmployee(@ModelAttribute("user") User user, Model model){
        List<Department> departments = departmentService.allDepartments();
        Long exampleId = (long) 3;
        Department exampleDepartment = departmentService.findDepartmentById(exampleId);

        model.addAttribute("departments", departments);
        model.addAttribute("department", exampleDepartment);
        

        return "admin/add_employee.jsp";
    }

    @PostMapping("/add/employee")
    public String addEmployee(@Valid @ModelAttribute("user") User user, BindingResult result, Model model, HttpSession session) {
        userValidator.validate(user, result);
    
        if (result.hasErrors()) {
            System.out.println(result);
            return "admin/add_employee.jsp";
        }
    
        userService.saveWithUserRole(user);
    
        System.out.println("THIS IS THE NEW USER >>>>>>>>>>>>>>" + user);
    
        return "redirect:/view/employee";
    }

    @GetMapping("/admin/add/department")
    public String addDepartmentForm(Model model){

        model.addAttribute("department", new Department());

        return "admin/add_depart.jsp";
    }

    @PostMapping("/adding/department")
    public String addDepartment(@Valid @ModelAttribute("department") Department department, BindingResult result){
        if(result.hasErrors()){
            System.out.println(result);
            return "admin/add_depart.jsp";
        } else {
            System.out.println("THIS IS THE NEW DEPARTMENT >>>>>>>>>>>>>>>>>>>" + department);
            departmentService.createDepartment(department);
            return "redirect:/view/department";
        }

    }

    @GetMapping("/view/department")
    public String viewDepartment(Model model, @ModelAttribute Department department){

        List<Department> departments = departmentService.allDepartments();
        model.addAttribute("departments", departments);
        
        long usersCount = departmentService.getUsersCount();
        model.addAttribute("usersCount", usersCount);

        return "view_depart.jsp";
    }

    @GetMapping("/view/employee")
    public String viewEmployees(Model model, @ModelAttribute User user){

        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "view_employees.jsp";
    }

    @GetMapping("/view/employee/{id}")
    public String getEmployee(@PathVariable Long id, Model model){
        
        User user = userService.getOneUserById(id);
        model.addAttribute("user", user);
        return "employee.jsp";
    }
}
