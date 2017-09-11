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
  <title>关于我们-不同的帆船详情</title>
  <link rel="shortcut icon" href="<%=basePath%>/pages/common/images/favicon.ico">
  <link rel="stylesheet" href="<%=basePath%>/css/common.css">
  <link rel="stylesheet" href="<%=basePath%>/css/aboutusBoatDetail.css">
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
  <h2>${boatInfo.boatName}</h2>
  <ul>
    <li style="background: #8e5971"><a target="_blank" href="aboutusAirroute.html">不同的航线</a></li>
    <li style="background: #3f9ab1"><a target="_blank" href="aboutusBoat.html">不同的帆船</a></li>
    <li style="background: #664fb9"><a target="_blank" href="aboutusTeam.html">不同的团队</a></li>
    <li style="background: #01955e"><a target="_blank" href="aboutusCulture.html">不同的文化</a></li>
  </ul>
</div>
<!-- title END-->
<!-- 位置 -->
<div class="wrap">
  <div class="position-nav">
    <span>当前位置 : 首页 >> 关于我们 >> 不同的帆船 >></span>
    <em>帆船详情</em>
  </div>
</div>
<!-- 位置 END-->
<!-- main -->
<div class="main wrap">
  <div class="f-l">
    <div class="showImg"><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></div>
    <ul class="imgList">
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
      <li><img src="<%=basePath%>/images/aboutusBoatDetail/data/data01.jpg" alt=""></li>
    </ul>
  </div>
  <div class="f-r">
    <h2>${boatInfo.boatName}</h2>
    <p class="price">所属地：${boatInfo.destId}</p>
    <p>品牌：${boatInfo.boatBrand}</p>
    <p>型号：${boatInfo.boatType}</p>
    <p>配置详情：${boatInfo.boatDetail}</p>
    <div class="cir">
      可容纳${boatInfo.boatSeat}人
    </div>
    <a href="">立即预约</a>
  </div>
</div>
<!-- main END-->
<!-- 目的地 -->
<div class="wrap">
  <h2 class="advplace-title">推荐目的地</h2>
  <div class="advplace">
    <div class="wrap">
      <div class="list">
        <div class="list-li">
          <h3>/ 毛里求斯 / </h3>
          <img src="<%=basePath%>/pages/common/images/data/tjmdd1.jpg" alt="">
        </div>
        <a href="<%=path%>/destination/detail?id=1">
          <div class="list-li">
            <h3>/ 古巴 /  </h3>
            <img src="<%=basePath%>/pages/common/images/data/tjmdd2.jpg" alt="">
          </div>
        </a>
        <div class="list-li">
          <h3>/ 希腊 / </h3>
          <img src="<%=basePath%>/pages/common/images/data/tjmdd3.jpg" alt="">
        </div>
        <div class="list-li">
          <h3>/ 克罗地亚 / </h3>
          <img src="<%=basePath%>/pages/common/images/data/tjmdd4.jpg" alt="">
        </div>
        <div class="list-li">
          <h3>/ 泰国 / </h3>
          <img src="<%=basePath%>/pages/common/images/data/tjmdd5.jpg" alt="">
        </div>
      </div>
    </div>
  </div>
</div>
<!-- 目的地 END-->
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