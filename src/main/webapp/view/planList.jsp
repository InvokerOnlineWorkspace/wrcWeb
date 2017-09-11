<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://"
          + request.getServerName() + ":" + request.getServerPort()
          + path + "/";
%>
<html lang="zh">
<head>
  <meta charset="UTF-8">
  <title>2017航海计划</title>
  <link rel="shortcut icon" href=<%=basePath%>/"pages/common/images/favicon.ico">
  <link rel="stylesheet" href="<%=basePath%>/css/common.css">
  <link rel="stylesheet" href="<%=basePath%>/css/swiper.css">
  <link rel="stylesheet" href="<%=basePath%>/css/planList.css">
</head>
<body>
<!-- 头部 -->
<div class="top">
  <div class="wrap">
    <h1 class="f-l"><img src="<%=basePath%>/images/sprite/logo.png" alt=""></h1>
    <ul class="f-r">
      <li><a target="_blank" href="<%=path%>/index">首页</a></li>
      <li><a target="_blank" href="<%=path%>/aboutUs">关于我们</a></li>
      <li><a target="_blank" href="<%=path%>/destination/info">游玩目的地</a></li>
      <li><a target="_blank" href="<%=path%>/shop">好物分享</a></li>
      <li><a target="_blank" href="<%=path%>/share">达人博客</a></li>
      <li><a target="_blank" href="<%=path%>/faq">常见问题</a></li>
    </ul>
  </div>
</div>
<!-- 头部 END -->
<!-- banner -->
<div class="swiper-container banner">
  <div class="swiper-wrapper">
    <a href="" target="_blank" class="swiper-slide" data-src="<%=basePath%>/images/planList/data/banner.jpg"></a>
    <a href="" target="_blank" class="swiper-slide" data-src="<%=basePath%>/images/planList/data/banner.jpg"></a>
    <a href="" target="_blank" class="swiper-slide" data-src="<%=basePath%>/images/planList/data/banner.jpg"></a>
  </div>
  <div class="pagination"></div>
</div>
<!-- banner END -->
<!-- 位置 -->
<div class="wrap">
  <div class="position-nav">
    <span>当前位置 : 首页 >> 2017航海计划 </span>
    <em>2017航海计划</em>
  </div>
</div>
<!-- 位置 END-->
<!-- content -->
<div class="content wrap">
  <ul class="content-title">
    <a href="<%=path%>/sail/info?areaCode=1">
      <li class="bg1 on"></li>
    </a>
    <a href="<%=path%>/sail/info?areaCode=2">
    <li class="bg2"></li>
    </a>
    <a href="<%=path%>/sail/info?areaCode=3">
    <li class="bg3"></li>
    </a>
    <a href="<%=path%>/sail/info?areaCode=4">
    <li class="bg4"></li>
    </a>
    <a href="<%=path%>/sail/info?areaCode=5">
    <li class="bg5"></li>
    </a>
    <a href="<%=path%>/sail/info?areaCode=6">
    <li class="bg6"></li>
    </a>
  </ul>
  <div class="free">
    <div class="free-main">
      <c:forEach var="sailPlan" items="${sailPlanList}">
      <a href="" target="_blank" class="free-list new">
        <img src="<%=basePath%>/images/planList/data/data12.jpg" alt="">
        <p>【${sailPlan.destinationId}】${sailPlan.airrouteName}</p>
        <div class="price">
          <span>查看详情</span>
          <ul>
            <li class="chuanpiao"></li>
            <li class="chuanpiao2"></li>
            <li class="plane"></li>
          </ul>
        </div>
      </a>
      </c:forEach>
    </div>
  </div>
</div>
<!-- content END -->
<!-- 分页器 -->
<div class="wrap">
  <!-- 分页器 -->
  <div class="page-nav">
    <div class="f-l">
      <a href="" class="last"></a>
      <ul>
        <c:forEach var="i" begin="1" end="${totalPage}">
          <li <c:if test="${i == currentPage}">class="on"</c:if>>
            <a href="<%=path%>/sail/info?i=${i}&areaCode="${areaCode}">${i}</a>
          </li>
        </c:forEach>
      </ul>
      <a href="" class="next"></a>
    </div>
    <div class="f-r"> 共${totalNum}条</div>
  </div>
  <!-- 分页器 End-->
</div>
<!-- 分页器 End-->
<!-- 底部 -->
<div class="footer">
  <div class="wrap o-h">
    <div class="footer-li">
      <h2><img src="<%=basePath%>/images/sprite/logo_foot.png" alt=""></h2>
      <p>“<span>玩儿船</span>”隶属于风行海商务服务(北京)
        有限公司，是一家整合全球岛屿旅游资源及
        提供游艇租赁的私属定制机构。</p>
    </div>
    <div class="footer-li">
      <h2><img src="<%=basePath%>/images/sprite/icon02.png" alt="">联系我们</h2>
      <p class="us">
        <span>客服电话：</span>
        <em>国内：+86-18653289591</em>
      </p>
      <p class="us"><span></span><em>国外：+230 57655895</em></p>
      <p class="us">
        <span>联系地址：</span>
        <em>中国北京市海淀区交大东路</em>
      </p>
      <p class="us"><span></span><em>66号院1号楼262</em></p>
    </div>
    <div class="footer-li">
      <h2><img src="<%=basePath%>/images/sprite/icon03.png" alt="">合作商家</h2>
      <ul class="other">
        <li><img src="<%=basePath%>/images/sprite/tao.png" alt="">淘宝</li>
        <li><img src="<%=basePath%>/images/sprite/wei.png" alt="">携程</li>
        <li><img src="<%=basePath%>/images/sprite/xie.png" alt="">微博</li>
      </ul>
    </div>
    <div class="footer-li code">
      <img src="<%=basePath%>/images/sprite/code.png" alt="">
      <h4>关注微信公众号</h4>
    </div>
  </div>
  <div class="copyright ">
    <p class="wrap">版权所有：玩儿船 Copyright © 2013 com All rights reserved.  京ICP 证13029641号  风行海商务服务(北京)有限公司</p>
  </div>
</div>
<!-- 底部 End-->
<script src="<%=basePath%>/js/libs/swiper/idangerous.swiper.min.js"></script>
<script src="<%=basePath%>/js/libs/jquery/dist/jquery.min.js"></script>
<script src="<%=basePath%>/js/planList.js"></script>
<script>
  planList.init();
</script>
</body>
</html>