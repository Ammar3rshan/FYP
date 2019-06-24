package com.linkdoodtechnologies.mccc.controller;

import com.linkdoodtechnologies.mccc.helper.UniversityHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping("/home_api")

    public ModelAndView home_api(){

        ModelAndView mv = new ModelAndView("test/Home");
        mv.addObject("AllUniList", UniversityHelper.getAllUni());
        return mv;
    }


    @RequestMapping("/test_api")

    public ModelAndView Test(){

        ModelAndView mv = new ModelAndView("test/test");
        return mv;
    }

}
