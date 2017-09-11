package com.wanerchuan.domain.defined;

import com.wanerchuan.domain.generation.WrcAirrouteInfo;

/**
 * Created by zzh on 2017/9/10.
 */
public class WrcAirrouteVO extends WrcAirrouteInfo {

    private String feeTotal;

    private String totalRemark;

    private String feeInclude;

    private String includeRemark;

    private String feeHaveNot;

    private String haveNotRemark;

    private String refundContext;

    public String getFeeTotal() {
        return feeTotal;
    }

    public void setFeeTotal(String feeTotal) {
        this.feeTotal = feeTotal;
    }

    public String getTotalRemark() {
        return totalRemark;
    }

    public void setTotalRemark(String totalRemark) {
        this.totalRemark = totalRemark;
    }

    public String getFeeInclude() {
        return feeInclude;
    }

    public void setFeeInclude(String feeInclude) {
        this.feeInclude = feeInclude;
    }

    public String getIncludeRemark() {
        return includeRemark;
    }

    public void setIncludeRemark(String includeRemark) {
        this.includeRemark = includeRemark;
    }

    public String getFeeHaveNot() {
        return feeHaveNot;
    }

    public void setFeeHaveNot(String feeHaveNot) {
        this.feeHaveNot = feeHaveNot;
    }

    public String getHaveNotRemark() {
        return haveNotRemark;
    }

    public void setHaveNotRemark(String haveNotRemark) {
        this.haveNotRemark = haveNotRemark;
    }

    public String getRefundContext() {
        return refundContext;
    }

    public void setRefundContext(String refundContext) {
        this.refundContext = refundContext;
    }
}
