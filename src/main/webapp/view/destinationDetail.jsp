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
  <title>游玩目的地</title>
  <link rel="shortcut icon" href="<%=basePath%>/pages/common/images/favicon.ico">
  <link rel="stylesheet" href="<%=basePath%>/css/common.css">
  <link rel="stylesheet" href="<%=basePath%>/css/swiper.css">
  <link rel="stylesheet" href="<%=basePath%>/css/destinationDetail.css">
</head>
<body>
<!-- 头部 -->
<div class="top">
  <div class="wrap">
    <a href="<%=path%>/index">
      <h1 class="f-l"><img src="<%=basePath%>/images/sprite/logo.png" alt=""></h1>
    </a>
    <ul class="f-r">
      <li><a target="_blank" href="<%=path%>/index">首页</a></li>
      <li><a target="_blank" href="<%=path%>/aboutUs.html">关于我们</a></li>
      <li class="on"><a target="_blank" href="<%=path%>/destination">游玩目的地</a></li>
      <li><a target="_blank" href="<%=path%>/shop">好物分享</a></li>
      <li><a target="_blank" href="<%=path%>/share">达人博客</a></li>
      <li><a target="_blank" href="<%=path%>/qa">常见问题</a></li>
    </ul>
  </div>
</div>
<!-- 头部 END -->
<!-- title -->
<div class="title">
  <div class="wrap">
    <h2>${DestInfo.destinationCnName}<span>${DestInfo.destinationEnName}</span></h2>
    <ul>
      <c:forEach items="${keyWordArr}" var="keyWord">
        <li>${keyWord}</li>
      </c:forEach>
    </ul>
  </div>
</div>
<!-- title END-->
<!-- content -->
<div class="content">
  <div class="wrap">
    <div class="f-l">
      <div class="swi-nav">
        <div class="swiper-container pagenav">
          <div class="swiper-wrapper">
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/destinationDetail/data/data00.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/destinationDetail/data/data02.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/destinationDetail/data/data03.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/destinationDetail/data/data01.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/destinationDetail/data/data02.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/destinationDetail/data/data03.jpg" alt="">
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="f-r">
      <div class="introInfo">
        <h2>${DestInfo.destinationCnName}</h2>
        ${DestInfo.destinationIntro}
      </div>
      <div class="pagination"></div>
    </div>
  </div>
</div>
<!-- content END-->
<!-- 介绍 -->
<div class="intro">
  <div class="wrap">
    <h2><span>${DestInfo.destinationCnName} ·人文介绍</span></h2>
    <div class="main">
      <div class="main-list">
        <div class="img f-l"><img src="<%=basePath%>/images/sprite/data05.png" alt=""></div>
        <div class="p">
          ${DestInfo.weather}
        </div>
      </div>
      <div class="main-list">
        <div class="img f-l"><img src="<%=basePath%>/images/sprite/data05.png" alt=""></div>
        <div class="p">
          ${DestInfo.exitEntry}
        </div>
      </div>
      <div class="main-list">
        <div class="img f-l"><img src="<%=basePath%>/images/sprite/data06.png" alt=""></div>
        <div class="p">
          ${DestInfo.messageMode}
        </div>
      </div>
    </div>
  </div>
</div>
<!-- 介绍 END-->
<!-- 自由行 -->
<div class="free">
  <div class="wrap">
    <h2 class="sub-title">
      <span>自由行</span>
      <a href="">共12个行程</a>
    </h2>
    <div class="free-main">
      <div class="free-list">
        <img src="<%=basePath%>/images/destinationDetail/data/data12.jpg" alt="">
        <p>【大溪地】自由行 快艇海豚 百年茶园 23色土庄园四驱车</p>
        <div class="price yellow">￥630~700 / 人起</div>
      </div>
      <div class="free-list">
        <img src="<%=basePath%>/images/destinationDetail/data/data14.jpg" alt="">
        <p>【大溪地】自由行 快艇海豚 百年茶园 23色土庄园四驱车</p>
        <div class="price yellow">￥630~700 / 人起</div>
      </div>
      <div class="free-list">
        <img src="<%=basePath%>/images/destinationDetail/data/data13.jpg" alt="">
        <p>【大溪地】自由行 快艇海豚 百年茶园 23色土庄园四驱车</p>
        <div class="price yellow">￥630~700 / 人起</div>
      </div>
    </div>
  </div>
</div>
<!-- 自由行 END-->
<!-- 帆船 -->
<div class="boat">
  <div class="wrap">
    <h2 class="sub-title boat-bg">
      <span>帆船</span>
      <a href="<%=basePath%>/boat/info">更多</a>
    </h2>
    <div class="free-main">
      <c:forEach var="boat" items="${boatList}">
        <div class="free-list">
          <img src="<%=basePath%>/images/destinationDetail/data/data12.jpg" alt="${boat.boatName}">
          <h2>${boat.boatName}</h2>
          <p class="price">所属地：${boat.destId}</p>
          <p><span>品牌：${boat.boatBrand}</span></p>
          <p><span>型号：${boat.boatType}</span></p>
          <a href="<%=basePath%>/boat/detail?id=${boat.id}">查看详情</a>
        </div>
      </c:forEach>

    </div>
  </div>
</div>
<!-- 帆船 END-->
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
<script src="<%=basePath%>/js/destinationDetail.js"></script>
<script>
  destinationDetail.init();
</script>
</body>
</html>