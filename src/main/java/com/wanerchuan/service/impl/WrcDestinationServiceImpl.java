package com.wanerchuan.service.impl;

import com.wanerchuan.dao.defined.WrcDestinationDao;
import com.wanerchuan.dao.generation.WrcDestinationInfoMapper;
import com.wanerchuan.domain.generation.WrcDestinationInfo;
import com.wanerchuan.service.WrcDestinationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zzh on 2017/8/24.
 */
@Service
public class WrcDestinationServiceImpl implements WrcDestinationService {

    @Autowired
    WrcDestinationInfoMapper wrcDestinationInfoMapper;
    @Autowired
    WrcDestinationDao wrcDestinationDao;


    public WrcDestinationInfo getDestinationInfoById(String id) {
        return this.wrcDestinationInfoMapper.selectByPrimaryKey(id);
    }

    public List<WrcDestinationInfo> getTopDestList(int i) {
        return this.wrcDestinationDao.getTopDestList(i);
    }
}
