package com.wanerchuan.controller;

import com.wanerchuan.domain.defined.Page;
import com.wanerchuan.domain.generation.WrcAirrouteFeatureDetail;
import com.wanerchuan.domain.generation.WrcAirrouteFeeDetail;
import com.wanerchuan.domain.generation.WrcAirrouteFlowDetail;
import com.wanerchuan.domain.generation.WrcAirrouteInfo;
import com.wanerchuan.service.WrcSailPlanService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by zzh on 2017/8/26.
 */
@Controller
@RequestMapping("sail")
public class WrcSailPlanController {

    @Autowired
    WrcSailPlanService wrcSailPlanService;

    private int currentPage = 1;

    @RequestMapping("info")
    public ModelAndView toSailInfoPage(HttpServletRequest request){

        ModelAndView mav = new ModelAndView();
        String areaCode = request.getParameter("areaCode");
        if(StringUtils.isNotEmpty(request.getParameter("i"))){
            currentPage = Integer.parseInt(request.getParameter("i"));
        }
        String destId = request.getParameter("destId");
        Page page = new Page();
        page.setPageSize(9);
        page.setAreaCode(areaCode);

        List<WrcAirrouteInfo> sailPlanList = wrcSailPlanService.getSailPlanList(page);
        int totalNum = wrcSailPlanService.queryPlanNum(page);
        int totalPage = totalNum/page.getPageSize() + 1;
        mav.setViewName("planList");
        mav.addObject("totalNum",totalNum);
        mav.addObject("totalPage",totalPage);
        mav.addObject("currentPage",currentPage);
        mav.addObject("areaCode",areaCode);
        mav.addObject("dest",destId);
        mav.addObject("sailPlanList",sailPlanList);
        return mav;
    }

    @RequestMapping("detail")
    public ModelAndView toSailDetailPage(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        String id = request.getParameter("id");

        WrcAirrouteInfo wrcAirrouteInfo =  wrcSailPlanService.getSailPlanInfo(id);
        WrcAirrouteFeeDetail feeDetail = wrcSailPlanService.getFeeInfo(id);
        WrcAirrouteFeatureDetail featureDetail = wrcSailPlanService.getFeatureInfo(id);
        List<WrcAirrouteFlowDetail> flowList = wrcSailPlanService.getFlowList(id);


        mav.setViewName("planDetail");
        return mav;
    }
}
