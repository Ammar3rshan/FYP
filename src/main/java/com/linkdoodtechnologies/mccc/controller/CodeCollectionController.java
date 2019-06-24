package com.linkdoodtechnologies.mccc.controller;

import com.linkdoodtechnologies.mccc.dao.CodeCollectionDAO;
import com.linkdoodtechnologies.mccc.helper.CodeCollectionHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
public class CodeCollectionController {


    @RequestMapping("get_name_page")
    public static ModelAndView get_name_page(){




        ModelAndView mv = new ModelAndView("test/CodeCollectionLogin");
        return mv;
    }

    @RequestMapping("get_name")
    public static ModelAndView getNameAndId(
            @RequestParam("user_name") String user_name,
            @RequestParam("user_student_id") String user_student_id,
            HttpSession session
    ){


        Date d1 = new Date();
        String date = d1 + "";

        if (user_name.equals("")){
            return new ModelAndView(new RedirectView("get_name_page"));

        }else
        {
            CodeCollectionHelper.insertUserInfo(user_name, user_student_id,date);

            CodeCollectionDAO codeCollectionDAO = CodeCollectionHelper.getUserId(user_name, user_student_id);
            session.setAttribute("loginUser",codeCollectionDAO);
            System.out.print(codeCollectionDAO.user_db_id);

            return new ModelAndView(new RedirectView("get_user_answers_page"));
        }


    }


    @RequestMapping("get_user_answers_page")
    public static ModelAndView get_user_answers(){


        ModelAndView mv = new ModelAndView("test/CodeCollectionAnswers");
        return mv;
    }

    @RequestMapping("get_user_answers")
    public static ModelAndView get_user_answers(
            @RequestParam("answer_1") String answer_1,
            @RequestParam("answer_2") String answer_2,
            @RequestParam("answer_3") String answer_3,
            @RequestParam("answer_4") String answer_4,
            @RequestParam("answer_5") String answer_5,
            @RequestParam("answer_1_clicks") String answer_1_clicks,
            @RequestParam("answer_2_clicks") String answer_2_clicks,
            @RequestParam("answer_3_clicks") String answer_3_clicks,
            @RequestParam("answer_4_clicks") String answer_4_clicks,
            @RequestParam("answer_5_clicks") String answer_5_clicks,
            @RequestParam("answer_1_delets") String answer_1_delets,
            @RequestParam("answer_2_delets") String answer_2_delets,
            @RequestParam("answer_3_delets") String answer_3_delets,
            @RequestParam("answer_4_delets") String answer_4_delets,
            @RequestParam("answer_5_delets") String answer_5_delets,
            HttpSession session

    ){

        if(answer_1_clicks.equals("")){
            return new ModelAndView(new RedirectView("get_user_answers_page"));
        }else {
            ModelAndView mv = new ModelAndView("test/CodeCollectionLoop");


        int total_clicks_var = Integer.parseInt(answer_1_clicks)+Integer.parseInt(answer_2_clicks)+Integer.parseInt(answer_3_clicks)+Integer.parseInt(answer_4_clicks)+Integer.parseInt(answer_5_clicks);
        int total_delete_var = Integer.parseInt(answer_1_delets)+Integer.parseInt(answer_2_delets)+Integer.parseInt(answer_3_delets)+Integer.parseInt(answer_4_delets)+Integer.parseInt(answer_5_delets);
//
        String total_clicks = Integer.toString(total_clicks_var);
        String total_delete = Integer.toString(total_delete_var);
            CodeCollectionDAO codeCollectionDAO = (CodeCollectionDAO) session.getAttribute("loginUser");
            CodeCollectionHelper.insertUserAnswers(answer_1, answer_2, answer_3, answer_4, answer_5, answer_1_clicks, answer_2_clicks, answer_3_clicks, answer_4_clicks, answer_5_clicks, total_clicks, answer_1_delets, answer_2_delets, answer_3_delets, answer_4_delets, answer_5_delets, total_delete, codeCollectionDAO.user_db_id);
            return mv;
        }



    }



}
