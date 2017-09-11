package com.wanerchuan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by zzh on 2017/8/26.
 * 不同系列页面
 */
@Controller
@RequestMapping("diff")
public class WrcDiffPageController {

    @RequestMapping("teams")
    public ModelAndView toTeamPage(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("teams");
        return mav;
    }

    @RequestMapping("culture")
    public ModelAndView toCulturePage(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("culture");
        return mav;
    }

    @RequestMapping("airroute")
    public ModelAndView toAirroute(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("airroute");
        return mav;
    }
}
