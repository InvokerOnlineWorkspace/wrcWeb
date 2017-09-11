package com.wanerchuan.controller;

import com.wanerchuan.domain.generation.WrcDestinationInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by zzh on 2017/8/16.
 * 首页
 */
@Controller
public class WrcIndexPageController extends BaseController {

    @RequestMapping(value = "index")
    public ModelAndView indexPage(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        List<WrcDestinationInfo> destList =getFooterList();

        mav.setViewName("indexs");
        mav.addObject("destList",destList);
        return mav;
    }

    @RequestMapping(value="aboutUs")
    public ModelAndView toAboutUsPage(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("aboutUs");
        return mav;
    }

    @RequestMapping(value ="shop")
    public ModelAndView toShopPage(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("shop");
        return mav;
    }

    @RequestMapping(value ="share")
    public ModelAndView toSharePage(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("share");
        return mav;
    }

    @RequestMapping(value ="faq")
    public ModelAndView toFaqPage(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("faq");
        return mav;
    }


}
