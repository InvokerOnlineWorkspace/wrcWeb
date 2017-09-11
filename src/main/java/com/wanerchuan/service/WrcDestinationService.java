package com.wanerchuan.service;

import com.wanerchuan.domain.generation.WrcDestinationInfo;

import java.util.List;

/**
 * Created by zzh on 2017/8/24.
 */
public interface WrcDestinationService {

    /**
     * 根据id取目的地详情信息
     * */
    public  WrcDestinationInfo getDestinationInfoById(String id);

    List<WrcDestinationInfo> getTopDestList(int i);

}
