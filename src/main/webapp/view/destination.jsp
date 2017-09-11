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
  <link rel="stylesheet" href="<%=basePath%>/css/destination.css">
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
<div class="banner">
  <img src="<%=basePath%>/images/sprite/data01.png" alt="">
  <ul class="site wrap">
    <li style="top: 215px; left: 145px;"><a target="blank" href="<%=path%>/destination/detail?id=1"></a></li>
  </ul>
</div>
<!-- banner END-->
<!-- 目的地 -->
<div class="wrap">
  <h2 class="advplace-title">推荐目的地</h2>
</div>
<!-- 目的地 END-->
<!-- content -->
<div class="swiper-container content">
  <div class="swiper-wrapper">
    <div class="swiper-slide" data-src="<%=basePath%>/images/destination/data/data02.jpg">
      <div class="main">
        <h2>大溪地（Tahiti）</h2>
        <p>大溪地，是法属波利尼西亚向风群岛中的最大岛屿，位于南太平洋。这里四季温暖如春、物产丰富。居民称自己为“上帝的人”，外国人则认为这里是“最接近天堂的地方”。 是法属波利尼西亚向风群岛中的最大岛屿，位于南太平洋。这里四季温暖如春、物产丰富。居民称自己为“上帝的人”，外国人则认为这里是“最接近天堂的地方”</p>
        <div class="heart">
          <div class="heartList">
            <span>推荐指数</span>
            <ul>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
            </ul>
          </div>
          <div class="heartList">
            <span>气候</span>
            <ul>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
              <li class="half"></li>
            </ul>
          </div>
          <div class="heartList">
            <span>人文</span>
            <ul>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
            </ul>
          </div>
          <div class="heartList">
            <span>航海游玩</span>
            <ul>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
            </ul>
          </div>
        </div>
        <a target="blank" class="more" href="<%=path%>/destination/detail?id=1">查看详情</a>
      </div>
    </div>
    <div class="swiper-slide" data-src="<%=basePath%>/images/destination/data/data02.jpg">
      <div class="main">
        <h2>大溪地（Tahiti）</h2>
        <p>大溪地，是法属波利尼西亚向风群岛中的最大岛屿，位于南太平洋。这里四季温暖如春、物产丰富。居民称自己为“上帝的人”，外国人则认为这里是“最接近天堂的地方”。 是法属波利尼西亚向风群岛中的最大岛屿，位于南太平洋。这里四季温暖如春、物产丰富。居民称自己为“上帝的人”，外国人则认为这里是“最接近天堂的地方”</p>
        <div class="heart">
          <div class="heartList">
            <span>推荐指数</span>
            <ul>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
            </ul>
          </div>
          <div class="heartList">
            <span>气候</span>
            <ul>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
            </ul>
          </div>
          <div class="heartList">
            <span>人文</span>
            <ul>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
            </ul>
          </div>
          <div class="heartList">
            <span>航海游玩</span>
            <ul>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
            </ul>
          </div>
        </div>
        <a target="blank" class="more" href="<%=path%>/destination/detail?id=1">查看详情</a>
      </div>
    </div>
    <div class="swiper-slide" data-src="<%=basePath%>/images/destination/data/data02.jpg">
      <div class="main">
        <h2>古巴（Tahiti）</h2>
        <p>大溪地，是法属波利尼西亚向风群岛中的最大岛屿，位于南太平洋。这里四季温暖如春、物产丰富。居民称自己为“上帝的人”，外国人则认为这里是“最接近天堂的地方”。 是法属波利尼西亚向风群岛中的最大岛屿，位于南太平洋。这里四季温暖如春、物产丰富。居民称自己为“上帝的人”，外国人则认为这里是“最接近天堂的地方”</p>
        <div class="heart">
          <div class="heartList">
            <span>推荐指数</span>
            <ul>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
            </ul>
          </div>
          <div class="heartList">
            <span>气候</span>
            <ul>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
            </ul>
          </div>
          <div class="heartList">
            <span>人文</span>
            <ul>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
            </ul>
          </div>
          <div class="heartList">
            <span>航海游玩</span>
            <ul>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
            </ul>
          </div>
        </div>
        <a target="blank" class="more" href="<%=path%>/destination/detail?id=1">查看详情</a>
      </div>
    </div>
  </div>
</div>
<div class="page-banner">
  <div class="pagination"></div>
</div>

<!-- content END-->
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
<script src="<%=basePath%>/js/destination.js"></script>
<script>
  destination.init();
</script>
</body>
</html>