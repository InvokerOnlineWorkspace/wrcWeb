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
  <title>玩儿船＿首页</title>
  <link rel="shortcut icon" href="<%=basePath%>/pages/common/images/favicon.ico">
  <link rel="stylesheet" href="<%=basePath%>/css/common.css">
  <link rel="stylesheet" href="<%=basePath%>/css/swiper.css">
  <link rel="stylesheet" href="<%=basePath%>/css/index.css">
</head>
<body>
<!-- 头部 -->
<div class="top bg">
  <div class="wrap">
    <h1 class="f-l"><img src="<%=basePath%>/images/sprite/logo.png" alt=""></h1>
    <ul class="f-r">
      <li class="on"><a href="<%=path%>/index">首页</a></li>
      <li><a href="<%=path%>/aboutUs">关于我们</a></li>
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
    <a href="" target="_blank" class="swiper-slide" data-src="<%=basePath%>/images/index/banner.jpg"></a>
    <a href="" target="_blank" class="swiper-slide" data-src="<%=basePath%>/images/index/banner.jpg"></a>
    <a href="" target="_blank" class="swiper-slide" data-src="<%=basePath%>/images/index/banner.jpg"></a>
  </div>
  <div class="pagination"></div>
</div>
<!-- banner END -->
<div class="theme clearfix wrap">
  <a href="" class="chengfeng" target="_blank"></a>
  <a href="" class="polang" target="_blank"></a>
</div>
<div class="wrap">
  <div class="list">
      <a href="<%=path%>/diff/airroute"class="list-li">
          <h2>不同的航线</h2>
          <p>Different Routes</p>
          <img src="<%=basePath%>/images/index/01.jpg" alt="不同的航线">
      </a>
      <a href="<%=path%>/boat/info" class="list-li">
          <h2>不同的帆船</h2>
          <p>Different Saling Boats</p>
          <img src="<%=basePath%>/images/index/02.jpg" alt="不同的帆船">
      </a>
      <a href="<%=path%>/diff/teams" class="list-li">
          <h2>不同的团队</h2>
          <p>Different Teams</p>
          <img src="<%=basePath%>/images/index/03.jpg" alt="不同的团队">
      </a>
      <a href="<%=path%>/diff/culture" class="list-li">
          <h2>不同的文化</h2>
          <p>Different Culture</p>
          <img src="<%=basePath%>/images/index/04.jpg" alt="不同的文化">
      </a>
  </div>
</div>
<div class="content-title">
  <h2>
    <a href="<%=path%>/destination/info">游玩目的地</a>
  </h2>
  <p>太平洋、印度洋、亚洲、地中海、加勒比海、阿巴科群岛，带你领略不同的海岛生活</p>
</div>
<div class="place wrap">
  <ul class="f-l">

    <li class="img-test">
      <a href="">
        <img src="<%=basePath%>/images/index/mdd1.jpg" alt="">
        <p><span>太平洋</span><em>:</em>大溪地&澳大利亚-圣灵群岛</p>
      </a>
    </li>
    <li class="mr12 img-test">
      <a href="<%=path%>/destination/detail?id=1">
        <img src="<%=basePath%>/images/index/mdd4.jpg" alt="">
        <p><span>加勒比海</span><em>:</em>古巴</p>
      </a>
    </li>

    <li class="img-test">
      <a href="">
        <img src="<%=basePath%>/images/index/mdd5.jpg" alt="">
        <p><span>巴哈马</span><em>:</em>阿巴科群岛</p>
      </a>
    </li>
  </ul>
  <ul class="f-r">
    <li class="img-test">
      <a href="">
        <img src="<%=basePath%>/images/index/mdd2.jpg" alt="">
        <p><span>印度洋</span><em>:</em>塞舌尔&毛里求斯&马尔代夫&马达加斯加</p>
      </a>
    </li>
    <li class="img-test">
      <a href="">
        <img src="<%=basePath%>/images/index/mdd3.jpg" alt="">
        <p><span>亚洲</span><em>:</em>泰国&马来西亚</p>
      </a>
    </li>
    <li class="img-test">
      <a href="">
        <img src="<%=basePath%>/images/index/mdd6.jpg" alt="">
        <p><span>地中海</span><em>:</em>克罗地亚&希腊&科西嘉&蔚蓝海岸</p>
      </a>
    </li>
  </ul>
</div>
<div class="adv">
  <img src="<%=basePath%>/images/index/mdd7.jpg" alt="">
</div>
<a href='<%=path%>/sail/info' class="content-title">
  <h2>最新航海计划</h2>
  <p>全年的航海计划，全年的精彩冒险</p>
</a>
<div class="newPlan wrap">
  <div class="list">
    <a class="list-li" href="<%=path%>/sail/info">
      <h2>航海计划</h2>
      <img src="<%=basePath%>/images/index/mdd8.jpg" alt="">
    <a/>
    <a class="list-li" href="<%=path%>/vaction">
      <h2>度假·美食</h2>
      <img src="<%=basePath%>/images/index/mdd9.jpg" alt="">
    </a>
    <div class="list-li">
      <h2>Gallery</h2>
      <img src="<%=basePath%>/images/index/mdd10.jpg" alt="">
    </div>
  </div>
</div>
<div class="content-title">
  <h2>最佳推荐目的地</h2>
  <p>2017最佳目的地，带您全年精彩冒险</p>
</div>
<!-- 目的地 -->
<div class="advplace">
  <div class="wrap">
    <div class="list">
      <a href="<%=path%>/destination/detail?id=2" class="list-li">
        <h3>/ 毛里求斯 / </h3>
        <img src="<%=basePath%>/pages/common/images/data/tjmdd1.jpg" alt="">
      </a>
      <a href="<%=path%>/destination/detail?id=1">
        <div class="list-li">
          <h3>/ 古巴 /  </h3>
          <img src="<%=basePath%>/pages/common/images/data/tjmdd2.jpg" alt="">
        </div>
      </a>
      <a href="<%=path%>/destination/detail?id=6" class="list-li">
        <h3>/ 希腊 / </h3>
        <img src="<%=basePath%>/pages/common/images/data/tjmdd3.jpg" alt="">
      </a>
      <a href="<%=path%>/destination/detail?id=3" class="list-li">
        <h3>/ 克罗地亚 / </h3>
        <img src="<%=basePath%>/pages/common/images/data/tjmdd4.jpg" alt="">
      </a>
      <a href="<%=path%>/destination/detail?id=5" class="list-li">
        <h3>/ 泰国 / </h3>
        <img src="<%=basePath%>/pages/common/images/data/tjmdd5.jpg" alt="">
      </a>
    </div>
  </div>
</div>
<!-- 目的地 End-->
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
        <li><img src="<%=basePath%>/images/sprite/wei.png" alt="">微博</li>
        <li><img src="<%=basePath%>/images/sprite/xie.png" alt="">携程</li>
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
<script src="<%=basePath%>/js/index.js"></script>
<script>
  index.init();
</script>
</body>
</html>