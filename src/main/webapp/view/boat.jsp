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
    <title>不同的帆船</title>
    <link rel="shortcut icon" href="<%=basePath%>/pages/common/images/favicon.ico">
    <link rel="stylesheet" href="<%=basePath%>/css/common.css">
    <link rel="stylesheet" href="<%=basePath%>/css/aboutusBoat.css">
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
        <em>不同的帆船</em>
    </div>
</div>
<!-- 位置 END-->
<!-- banner -->
<div class="banner">
    <img src="<%=basePath%>/images/aboutusBoat/data/data01.jpg" alt="">
</div>
<!-- banner END-->
<!-- 介绍 -->
<div class="intro">
    <div class="wrap">
        <ul class="nav">
            <li class="play on"><span>拼船航行游玩</span></li>
            <li class="private"><span>私人专属船只游玩</span></li>
        </ul>
        <div class="p on">
            <p>不论是航海新丁初入帆船，还是乘风破浪职业航海达人，随时欢迎你们加入我们的航海之旅；拥有一套专属于自己的宽敞舒适的私密卧室带独立卫生间，和豪华邮轮有些相似，最大的区别之一就是结交了身边不同国籍的几对新朋友代替了游轮上成百上千吵闹的游客；之二就是帆船独有的体积与速度能够随意到达大型游轮无法抵达的私密海岛，此时您可尽享浮潜的乐趣，看可爱的小鱼小虾，探寻五彩斑斓的珊瑚，感受温柔的细沙；玩儿船特邀顶级厨师在旅程中用最时令新鲜的有机食材为您准备丰盛独特的美丽菜肴。这一刻我们乘风破浪，拥抱海的平静，丢掉生活和办公室的烦躁享受垂钓与日光浴，感受微风和辽阔的大海；玩儿船专业团队将为您的旅程保驾护航；</p>
        </div>
        <div class="p">
            <p>不论是航海新丁初有一套专属于自己的宽敞舒适的私密卧区别之一就是结交了身边不同国籍的几的游客；之二就是帆船独有的体积与速度能够随意到达大型游轮无法抵达的私密海岛，此时您可尽享浮潜的乐趣，看可爱的小鱼小虾，探寻五彩斑斓的珊瑚，感受温柔的细沙；玩儿船特邀顶级厨师在旅程中用最时令新鲜的有机食材为您准备丰盛独特的美丽菜肴。这一刻我们乘风破浪，拥抱海的平静，丢掉生活和办公室的烦躁享受垂钓与日光浴，感受微风和辽阔的大海；玩儿船专业团队将为您的旅程保驾护航；</p>
        </div>
    </div>
</div>
<!-- 介绍 END-->
<div class="wrap">
    <h2 class="advplace-title">帆船</h2>
</div>
<!-- 帆船 -->
<div class="boat">
    <div class="wrap">
        <div class="free-main">
            <c:forEach var="boatinfo" items="${boatList}">
                <div class="free-list">
                    <img src="<%=basePath%>/images/aboutusBoat/data/01.jpg" alt="">
                    <h2>${boatinfo.boatName}</h2>
                    <p class="price">所属地：${boatinfo.destId}</p>
                    <p><span>品牌：${boatinfo.boatBrand}</span></p>
                    <p><span>型号：${boatinfo.boatType}</span></p>
                    <a target="blank" href="<%=path%>/boat/detail?id=${boatinfo.id}">查看详情</a>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!-- 帆船 END-->
<div class="wrap">
    <!-- 分页器 -->
    <div class="page-nav">
        <div class="f-l">
            <a href="" class="last"></a>
            <ul>
                <c:forEach var="i" begin="1" end="${totalPage}">
                    <li <c:if test="${i == currentPage}">class="on"</c:if>>
                        <a href="<%=path%>/boat/info?i=${i}">${i}</a>
                    </li>
                </c:forEach>
            </ul>
            <a href="" class="next"></a>
        </div>
        <div class="f-r"> 共${totalNum}条</div>
    </div>
    <!-- 分页器 End-->
</div>

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
<script src="<%=basePath%>/js/libs/jquery/dist/jquery.min.js"></script>
<script src="<%=basePath%>/js/aboutusBoat.js"></script>
<script>
    aboutusBoat.init();
</script>
</body>
</html>