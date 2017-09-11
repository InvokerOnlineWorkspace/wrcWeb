package com.wanerchuan.controller;

import com.wanerchuan.domain.defined.Page;
import com.wanerchuan.domain.generation.WrcBoatInfo;
import com.wanerchuan.service.WrcBoatInfoService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by zzh on 2017/8/26.
 * 玩儿船帆船相关页面
 */
@Controller
@RequestMapping("/boat")
public class WrcBoatsController {

    @Autowired
    private WrcBoatInfoService wrcBoatInfoService;

    private int pageSize = 6;

    private int currentPage = 1;

    @RequestMapping("info")
    public ModelAndView toBoatInfoPage(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        if(StringUtils.isNotEmpty(request.getParameter("i"))){
            currentPage = Integer.parseInt(request.getParameter("i"));
        }
        int totalNum = wrcBoatInfoService.queryBoatCountNum();
        int totalPage = totalNum/pageSize + 1;
        Page page = new Page();
        page.setCurrentPage(currentPage);
        List<WrcBoatInfo> boatInfoList = wrcBoatInfoService.queryALLBoatInfoList(page);
        mav.setViewName("boat");
        mav.addObject("boatList",boatInfoList);
        mav.addObject("totalPage",totalPage);
        mav.addObject("totalNum",totalNum);
        mav.addObject("currentPage",currentPage);
        return mav;
    }

    @RequestMapping("detail")
    public ModelAndView toBoatdetailPage(HttpServletRequest request){

        ModelAndView mav = new ModelAndView();
        String id = request.getParameter("id");
        WrcBoatInfo boatInfo = wrcBoatInfoService.queryBoatInfoById(id);

        mav.setViewName("boatDetail");
        mav.addObject("boatInfo",boatInfo);
        return mav;
    }
}
