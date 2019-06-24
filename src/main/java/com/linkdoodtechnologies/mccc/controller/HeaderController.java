package com.linkdoodtechnologies.mccc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HeaderController {

    @RequestMapping("/header")
    public  static ModelAndView header(){

        ModelAndView mv = new ModelAndView("test/AdminHeader");

        return mv;
    }

}
