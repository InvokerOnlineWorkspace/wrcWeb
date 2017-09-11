package com.wanerchuan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by zzh on 2017/9/8.
 */
@Controller
public class WrcGalleryPageController {

    @RequestMapping("/gallery")
    public ModelAndView toGallerypage(HttpServletRequest request){
        return null;
    }
}
