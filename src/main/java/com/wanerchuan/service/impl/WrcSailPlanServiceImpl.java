package com.wanerchuan.service.impl;

import com.wanerchuan.dao.defined.WrcSailPlanDao;
import com.wanerchuan.dao.generation.WrcAirrouteInfoMapper;
import com.wanerchuan.domain.defined.Page;
import com.wanerchuan.domain.defined.WrcAirrouteVO;
import com.wanerchuan.domain.generation.WrcAirrouteFeatureDetail;
import com.wanerchuan.domain.generation.WrcAirrouteFeeDetail;
import com.wanerchuan.domain.generation.WrcAirrouteFlowDetail;
import com.wanerchuan.domain.generation.WrcAirrouteInfo;
import com.wanerchuan.service.WrcSailPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zzh on 2017/9/10.
 */
@Service
public class WrcSailPlanServiceImpl implements WrcSailPlanService {

    @Autowired
    private WrcSailPlanDao wrcSailPlanDao;
    @Autowired
    private WrcAirrouteInfoMapper wrcAirrouteInfoMapper;



    public List<WrcAirrouteInfo> getSailPlanList(Page page) {
        return this.wrcSailPlanDao.getSailPlanList(page);
    }

    public int queryPlanNum(Page page) {
        return this.wrcSailPlanDao.queryPlanNum(page);
    }

    public WrcAirrouteVO getSailPlanInfo(String id) {
        return this.wrcSailPlanDao.getSailPlanInfo(id);
    }

    public WrcAirrouteInfo getPlanInfo(String id) {
        return this.wrcAirrouteInfoMapper.selectByPrimaryKey(id);
    }

    public WrcAirrouteFeeDetail getFeeInfo(String airrouteId) {
        return this.wrcSailPlanDao.getFeeInfo(airrouteId) ;
    }

    public WrcAirrouteFeatureDetail getFeatureInfo(String airrouteId) {
        return this.wrcSailPlanDao.getFeatureInfo(airrouteId);
    }

    public List<WrcAirrouteFlowDetail> getFlowList(String airrouteId) {
        return this.wrcSailPlanDao.getFlowList(airrouteId);
    }
}
