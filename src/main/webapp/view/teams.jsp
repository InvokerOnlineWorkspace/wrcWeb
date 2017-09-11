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
  <title>不同的团队</title>
  <link rel="shortcut icon" href="<%=basePath%>/pages/common/images/favicon.ico">
  <link rel="stylesheet" href="<%=basePath%>/css/common.css">
  <link rel="stylesheet" href="<%=basePath%>/css/aboutusTeam.css">
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
    <span>当前位置 : 首页 >> 关于我们 >></span>
    <em>不同的团队</em>
  </div>
</div>
<!-- 位置 END-->
<!-- main -->
<div class="main wrap">
  <div class="intro">
    <p>10年专业海岛航海探索团队，专注户外帆船航海度假、高山徒步、瀑布速降，溶洞探秘、攀岩及土著岛民文化探索等户外运动；</p>
    <p>多年服务欧美、中东，印度及中国小众群体的户外探索体验主题活动设计和策划；公司团出游订制。</p>
    <p>玩儿船拥有旅游类专业生态游学组织者资质，主要经营境外海岛目的地，目前已在全球设立遍布印度洋，加勒比海，地中海等34个服务基地；</p>
    <p>2010年开始推动带领中国客人境外海岛自然体验活动，培养孩子回归认识大自然，独立生存的技能夏令营，给予他们在传统学校体验不到的可爱又酷的自然世界。</p>
  </div>
  <div class="team">
    <h2>团队成员</h2>
    <ul class="clearfix">
      <li><img src="<%=basePath%>/images/sprite/1.png" alt=""></li>
      <li><img src="<%=basePath%>/images/sprite/2.png" alt=""></li>
      <li><img src="<%=basePath%>/images/sprite/3.png" alt=""></li>
      <li><img src="<%=basePath%>/images/sprite/4.png" alt=""></li>
    </ul>
    <div class="content">
      <div class="img f-l">
        <img src="<%=basePath%>/images/aboutusTeam/data/5.jpg" alt="">
      </div>
      <div class="f-l p">
        <p>马克</p>
        <p>乘风破浪一级队员，骨灰级职业航海玩家。</p>
        <p>来自法国帆船航海世家，曾三次和家人完成环球航行，探秘无数海岛，超过20年环球航海经验，拥有丰富的荒野生存技能，他独特的个性幽默风趣，热情内敛，特别能使初次接触航海的朋友获得安全感，爱上航海运动。</p>
      </div>
    </div>
  </div>
</div>
<!-- main END-->
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
</body>
</html>