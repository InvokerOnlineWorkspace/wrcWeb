package com.wanerchuan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by zzh on 2017/9/8.
 */
@Controller
public class WrcVactionPageController {

    @RequestMapping("/vaction")
    public ModelAndView toVactionPage(HttpServletRequest request){

        ModelAndView mav = new ModelAndView();
        mav.setViewName("vaction");
        return mav;
    }
}
