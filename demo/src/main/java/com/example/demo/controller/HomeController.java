package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @GetMapping(value = {"/dashboard","/"})
    public ModelAndView base(ModelAndView model){
        model.setViewName("dashboard");
        return model;
    }

    @GetMapping("/login")
    public ModelAndView loginPage(ModelAndView model){
        model.setViewName("login");
        return model;
    }
}
