package com.wanerchuan.service;

import com.wanerchuan.domain.defined.Page;
import com.wanerchuan.domain.defined.WrcAirrouteVO;
import com.wanerchuan.domain.generation.WrcAirrouteFeatureDetail;
import com.wanerchuan.domain.generation.WrcAirrouteFeeDetail;
import com.wanerchuan.domain.generation.WrcAirrouteFlowDetail;
import com.wanerchuan.domain.generation.WrcAirrouteInfo;

import java.util.List;
/**
 * Created by zzh on 2017/9/10.
 */
public interface WrcSailPlanService {

    /**
     * 根据area_code查询航海计划列表
     * */
    List<WrcAirrouteInfo> getSailPlanList(Page page);

    /**
     * 查询数量
     * */
    int queryPlanNum(Page page);

    WrcAirrouteVO getSailPlanInfo(String id);

    /**
     *info表
     */
    WrcAirrouteInfo getPlanInfo(String id);

    /**
     * fee表
     * */
    WrcAirrouteFeeDetail getFeeInfo(String airrouteId);

    /**
     * feature表
     * */
    WrcAirrouteFeatureDetail getFeatureInfo(String airrouteId);

    /**
     * flow表
     * */
    List<WrcAirrouteFlowDetail> getFlowList(String airrouteId);
}
