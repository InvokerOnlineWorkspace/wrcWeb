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
  <title>常见问题</title>
  <link rel="shortcut icon" href="<%=basePath%>/pages/common/images/favicon.ico">
  <link rel="stylesheet" href="<%=basePath%>/css/common.css">
  <link rel="stylesheet" href="<%=basePath%>/css/qa.css">
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
      <li class="on"><a target="_blank" href="<%=path%>/faq">常见问题</a></li>
    </ul>
  </div>
</div>
<!-- 头部 END -->
<!-- title -->
<div class="title">
  <h2>常见问题</h2>
  <ul>
    <li style="background: #8e5971">签证</li>
    <li style="background: #3f9ab1">气候</li>
    <li style="background: #664fb9">泰国注意事项</li>
    <li style="background: #01955e">澳大利亚气温如何</li>
  </ul>
</div>
<!-- title END-->
<!-- content -->
<div class="content">
  <div class="wrap">
    <div class="position-nav">
      <span>当前位置 : 首页 >></span>
      <em>常见问题</em>
    </div>
    <!-- main -->
    <div class="main">
      <div class="qalist open">
        <div class="question">
          <h2>1、去泰国旅游时，入境时需要什么资料？兑换当地货币的时候，需要注意什么事？</h2>
          <ul>
            <li style="background: #f99a9a">签证</li>
            <li style="background: #d797e7">泰国注意事项</li>
          </ul>
        </div>
        <div class="answer">
          <p>泰国政府决定于2017年2月28日至2017年8月31日期间，对包括中国在内的19个国家旅游签证暂时免收签证费（约230人民币），落地签费用也从2000泰铢降至原来的1000泰铢。不过免签证费≠免签，还是要提前办签证的。</p>
          <p>泰国的个人旅游签有效期为3个月，可逗留60天。可以选择个人递签，或者找代理办。</p>
        </div>
      </div>
      <div class="qalist">
        <div class="question">
          <h2>2、去泰国旅游时，入境时需要什么资料？</h2>
          <ul>
            <li style="background: #f99a9a">签证</li>
            <li style="background: #d797e7">泰国注意事项</li>
          </ul>
        </div>
        <div class="answer">
          <p>泰国政府决定于2017年2月28日至2017年8月31日期间，对包括中国在内的19个国家旅游签证暂时免收签证费（约230人民币），落地签费用也从2000泰铢降至原来的1000泰铢。不过免签证费≠免签，还是要提前办签证的。</p>
          <p>泰国的个人旅游签有效期为3个月，可逗留60天。可以选择个人递签，或者找代理办。</p>
        </div>
      </div>
      <div class="qalist">
        <div class="question">
          <h2>3、去澳大利亚旅游时，兑换当地货币的时候，需要注意什么事？</h2>
          <ul>
            <li style="background: #f99a9a">签证</li>
            <li style="background: #d797e7">泰国注意事项</li>
          </ul>
        </div>
        <div class="answer">
          <p>泰国政府决定于2017年2月28日至2017年8月31日期间，对包括中国在内的19个国家旅游签证暂时免收签证费（约230人民币），落地签费用也从2000泰铢降至原来的1000泰铢。不过免签证费≠免签，还是要提前办签证的。</p>
          <p>泰国的个人旅游签有效期为3个月，可逗留60天。可以选择个人递签，或者找代理办。</p>
        </div>
      </div>
    </div>
    <!-- main End-->
    <!-- 分页器 -->
    <div class="page-nav">
      <div class="f-l">
        <a href="" class="last"></a>
        <ul>
          <li class="on"><a href="">1</a></li>
          <li><a href="">2</a></li>
          <li><a href="">3</a></li>
          <li><a href="">4</a></li>
          <li><a href="">5</a></li>
          <li><a href="">...</a></li>
          <li><a href="">8</a></li>
        </ul>
        <a href="" class="next"></a>
      </div>
      <div class="f-r">显示 1~10条 共100条</div>
    </div>
    <!-- 分页器 End-->
  </div>
</div>

<!-- content END-->
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
        <div class="list-li">
          <h3>/ 古巴 /  </h3>
          <img src="<%=basePath%>/pages/common/images/data/tjmdd2.jpg" alt="">
        </div>
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
      <h2><img src="images/sprite/logo_foot.png" alt=""></h2>
      <p>“<span>玩儿船</span>”隶属于风行海商务服务(北京)
        有限公司，是一家整合全球岛屿旅游资源及
        提供游艇租赁的私属定制机构。</p>
    </div>
    <div class="footer-li">
      <h2><img src="images/sprite/icon02.png" alt="">联系我们</h2>
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
      <h2><img src="images/sprite/icon03.png" alt="">合作商家</h2>
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
<script src="<%=basePath%>/js/libs/jquery/dist/jquery.min.js"></script>
<script src="<%=basePath%>/js/qa.js"></script>
<script>
  qa.init();
</script>
</body>

</html>