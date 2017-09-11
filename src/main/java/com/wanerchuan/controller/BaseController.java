package com.wanerchuan.controller;

import com.wanerchuan.domain.generation.WrcDestinationInfo;
import com.wanerchuan.service.WrcDestinationService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by zzh on 2017/8/16.
 * 公共部分
 */
public class BaseController {

    @Autowired
    WrcDestinationService wrcDestinationService;

    /**
     * 获取底部列表
     * */
    public List<WrcDestinationInfo> getFooterList(){
        List<WrcDestinationInfo> destInfoList =  wrcDestinationService.getTopDestList(5);//底部5条信息
        return destInfoList;
    }


}
