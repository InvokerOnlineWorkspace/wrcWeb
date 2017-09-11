package com.wanerchuan.service.impl;

import com.wanerchuan.dao.defined.WrcBoatInfoDao;
import com.wanerchuan.dao.generation.WrcBoatInfoMapper;
import com.wanerchuan.domain.defined.Page;
import com.wanerchuan.domain.generation.WrcBoatInfo;
import com.wanerchuan.service.WrcBoatInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zzh on 2017/9/4.
 */
@Service
public class WrcBoatInfoServiceImpl implements WrcBoatInfoService {

    @Autowired
    WrcBoatInfoMapper wrcBoatInfoMapper;
    @Autowired
    WrcBoatInfoDao wrcBoatInfoDao;

    public List<WrcBoatInfo> queryALLBoatInfoList(Page page) {
        return wrcBoatInfoDao.queryALLBoatInfoList(page);
    }

    public int queryBoatCountNum() {
        return wrcBoatInfoDao.queryBoatCountNum();
    }

    public WrcBoatInfo queryBoatInfoById(String boatId) {
        return wrcBoatInfoMapper.selectByPrimaryKey(boatId);
    }

}
