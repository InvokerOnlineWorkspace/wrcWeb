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
<!DOCTYPE html>
<html lang="zh">
<head>
  <meta charset="UTF-8">
  <title>不同的航线</title>
  <link rel="shortcut icon" href="<%=basePath%>/pages/common/images/favicon.ico">
  <link rel="stylesheet" href="<%=basePath%>/css/common.css">
  <link rel="stylesheet" href="<%=basePath%>/css/swiper.css">
  <link rel="stylesheet" href="<%=basePath%>/css/aboutusAirroute.css">
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
<!-- title -->
<div class="title">
  <h2>关于我们</h2>
  <ul>
    <li style="background: #8e5971"><a target="_blank" href="<%=path%>/diff/airroute">不同的航线</a></li>
    <li style="background: #3f9ab1"><a target="_blank" href="<%=path%>/boat/info">不同的帆船</a></li>
    <li style="background: #664fb9"><a target="_blank" href="<%=path%>/diff/teams">不同的团队</a></li>
    <li style="background: #01955e"><a target="_blank" href="<%=path%>/diff/culture">不同的文化</a></li>
  </ul>
</div>
<!-- title END-->
<!-- 位置 -->
<div class="wrap">
  <div class="position-nav">
    <span>当前位置 : 首页 >> 关于我们 >> </span>
    <em>不同的航线</em>
  </div>
</div>
<!-- 位置 END-->
<!-- banner -->
<div class="swiper-container banner">
  <div class="swiper-wrapper">
    <a class="swiper-slide" data-src="<%=basePath%>/images/aboutusAirroute/data/data01.jpg">
      <div class="wrap">
        <p>我们主张绿色环保的帆船航海与探岛,感受与众不同的自然世界。和马达加斯加原始岛民部落篝火起舞,静谧的原始海岛瑜伽静修,户外运动导师指导攀岩，挑战深藏在大峡谷里的瀑布速降,海上冲浪,走进深海探秘海底世界；</p>
      </div>
    </a>
    <a class="swiper-slide" data-src="<%=basePath%>/images/aboutusAirroute/data/data01.jpg">
      <div class="wrap">
        <p>我们主张绿色环保的帆船航海与探岛,感受与众不同的自然世界。和马达加斯加原始岛民部落篝火起舞,静谧的原始海岛瑜伽静修,户外运动导师指导攀岩，挑战深藏在大峡谷里的瀑布速降,海上冲浪,走进深海探秘海底世界；</p>
      </div></a>
    <a class="swiper-slide" data-src="<%=basePath%>/images/aboutusAirroute/data/data01.jpg">
      <div class="wrap">
        <p>我们主张绿色环保的帆船航海与探岛,感受与众不同的自然世界。和马达加斯加原始岛民部落篝火起舞,静谧的原始海岛瑜伽静修,户外运动导师指导攀岩，挑战深藏在大峡谷里的瀑布速降,海上冲浪,走进深海探秘海底世界；</p>
      </div></a>
  </div>
  <div class="wrap">
    <div class="button">
      <div class="swiper-button-prev"></div>
      <div class="swiper-button-next"></div>
    </div>
  </div>
</div>
<!-- banner END-->
<!-- 主题 -->
<div class="wrap">
  <h2 class="advplace-title">玩儿船航海主题</h2>
  <ul class="btm-shadow-list">
    <li>
      <img src="<%=basePath%>/images/aboutusAirroute/data/01.jpg" alt="">
      <p>远航海钓</p>
    </li>
    <li>
      <img src="<%=basePath%>/images/aboutusAirroute/data/02.jpg" alt="">
      <p>人文探秘</p>
    </li>
    <li>
      <img src="<%=basePath%>/images/aboutusAirroute/data/03.jpg" alt="">
      <p>户外运动</p>
    </li>
    <li>
      <img src="<%=basePath%>/images/aboutusAirroute/data/04.jpg" alt="">
      <p>深海潜水</p>
    </li>
    <li>
      <img src="<%=basePath%>/images/aboutusAirroute/data/05.jpg" alt="">
      <p>主题派对</p>
    </li>
    <li>
      <img src="<%=basePath%>/images/aboutusAirroute/data/06.jpg" alt="">
      <p>帆船培训</p>
    </li>
  </ul>
</div>
<!-- 主题 END-->
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
<script src="<%=basePath%>/js/aboutusAirroute.js"></script>
<script>
  aboutusAirroute.init();
</script>
</body>
</html>