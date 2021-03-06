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
  <title>航海计划详情</title>
  <link rel="shortcut icon" href="<%=basePath%>/pages/common/images/favicon.ico">
  <link rel="stylesheet" href="<%=basePath%>/css/common.css">
  <link rel="stylesheet" href="<%=basePath%>/css/swiper.css">
  <link rel="stylesheet" href="<%=basePath%>/css/planListDetail.css">
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
  <div class="wrap">
    <h2>瑜伽<span></span></h2>
    <ul>
      <li>【8天7晚】</li>
      <li>【隐秘山林】</li>
      <li>【海上移动别墅】</li>
      <li>【瑜伽静修中心】</li>
    </ul>
  </div>
</div>
<!-- title END-->
<!-- content -->
<div class="content">
  <div class="wrap">
    <div class="f-l">
      <div class="showImg">
        <img src="<%=basePath%>/images/planListDetail/data/data00.jpg" alt="">
      </div>
      <div class="swi-nav">
        <div class="swiper-container pagenav">
          <div class="swiper-wrapper">
            <a class="swiper-slide on">
              <img src="<%=basePath%>/images/planListDetail/data/data01.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/planListDetail/data/data02.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/planListDetail/data/data03.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/planListDetail/data/data01.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/planListDetail/data/data02.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/planListDetail/data/data03.jpg" alt="">
            </a>
          </div>
        </div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
      </div>
    </div>
    <div class="f-r">
      <p>在生命的某个节点里，我们都会发觉身体里还住着一个自己。TA需要被释放、被聆听、被更为契合的灵音所召唤……</p>
      <p>接下来的这段旅程将是开启生命心光的绝佳选择。</p>
      <p>在泰国南部有一个原始的吉普赛人部落小岛，岛上只有1000名原住民生活在这里，
        在隐秘山林临海的地方有一处汇聚了宇宙能量的瑜伽静修中心，
        阿拉斯加,葡萄牙,瑞典,比利时,挪威,苏格兰等等来自世界各个角落的瑜伽爱好者远道而来,只为那一段静心的修行,寻找心中最美好的自己,每天都有完成修行的告别，每天也有陆陆续续前来的新面孔，能量就这样循环汇集不间断。
        8天7夜，完全体验原始部落生活，完全进入心灵的二次元空间，你只是你自己，借自然之力，无所畏惧。</p>
    </div>
  </div>
</div>
<!-- content END-->
<!-- main -->
<div class="main wrap">
  <div class="f-l">
    <ul class="select-title">
      <li class="on">游玩特色</li>
      <li>游玩行程</li>
      <li>报名相关</li>
    </ul>
    <div class="main-content">
      <h2 class="main-title">精神导师带你感知自然能量</h2>
      <p>在大自然里放逐，感知灵魂深处的大世界，瑜伽练习过程中，在精神导师的引导和同行伙伴的陪同下，向新生儿一样沐浴天地山水间的能量，重新认识从满月到新月转换期间对身体所带来的不同变换，从认识自己到平衡自己的成长感知，在神奇的体验中学习。</p>
      <img src="<%=basePath%>/images/sprite/data055.png" alt="">
      <img src="<%=basePath%>/images/sprite/data055.png" alt="">
      <img src="<%=basePath%>/images/sprite/data055.png" alt="">
      <h2 class="main-title">精神导师带你感知自然能量</h2>
      <p>在大自然里放逐，感知灵魂深处的大世界，瑜伽练习过程中，在精神导师的引导和同行伙伴的陪同下，向新生儿一样沐浴天地山水间的能量，重新认识从满月到新月转换期间对身体所带来的不同变换，从认识自己到平衡自己的成长感知，在神奇的体验中学习。</p>
      <img src="<%=basePath%>/images/sprite/data055.png" alt="">
      <img src="<%=basePath%>/images/sprite/data055.png" alt="">
      <img src="<%=basePath%>/images/sprite/data055.png" alt="">
      <h2 class="main-title">精神导师带你感知自然能量</h2>
      <p>在大自然里放逐，感知灵魂深处的大世界，瑜伽练习过程中，在精神导师的引导和同行伙伴的陪同下，向新生儿一样沐浴天地山水间的能量，重新认识从满月到新月转换期间对身体所带来的不同变换，从认识自己到平衡自己的成长感知，在神奇的体验中学习。</p>
      <img src="<%=basePath%>/images/sprite/data055.png" alt="">
      <img src="<%=basePath%>/images/sprite/data055.png" alt="">
      <img src="<%=basePath%>/images/sprite/data055.png" alt="">
    </div>
    <div class="main-content">
      <div class="dayplan">
        <div class="label main-title">
          <h3>第一天</h3>
          <span><em class="can">餐</em>含晚餐</span>
          <span><em class="su">宿</em>豪华别墅</span>
        </div>
        <div class="contain">
          <p>上海出发乘指定航班飞往普吉岛, 入住普吉岛豪华别墅休息调整,别墅厨师亲自烹饪泰式晚餐享用.</p>
        </div>
      </div>
      <div class="dayplan">
        <div class="label main-title">
          <h3>第二天</h3>
          <span><em class="can">餐</em>含晚餐</span>
          <span><em class="su">宿</em>豪华别墅</span>
        </div>
        <div class="contain">
          <p>10点别墅出发前往码头乘船1小时到达原始瑜伽岛.</p>
          <p>12:30入住房间,熟悉瑜伽岛环境,</p>
          <p>午餐,</p>
          <p>下午4:30开始第一堂课的练习</p>
          <p>4:30-6:30,</p>
          <p>晚餐馆内享用.</p>
        </div>
      </div>
      <div class="dayplan">
        <div class="label main-title">
          <h3>第三天</h3>
          <span><em class="can">餐</em>含晚餐</span>
          <span><em class="su">宿</em>豪华别墅</span>
        </div>
        <div class="contain">
          <p>10点别墅出发前往码头乘船1小时到达原始瑜伽岛.</p>
          <p>12:30入住房间,熟悉瑜伽岛环境,</p>
          <p>午餐,</p>
          <p>下午4:30开始第一堂课的练习</p>
          <p>4:30-6:30,</p>
          <p>晚餐馆内享用.</p>
        </div>
      </div>
    </div>
    <div class="main-content">
      <div class="pay-list">
        <h2 class="main-title">费用总额</h2>
        <div class="contain">
          <p>8天7晚瑜伽静修航海过夜之旅报名人数6-20人，每人13520人民币</p>
          <p class="remarks">备注：至少6人成行</p>
        </div>
      </div>
      <div class="pay-list">
        <h2 class="main-title">费用总额</h2>
        <div class="contain">
          <p>国内-普吉岛往返机票</p>
          <p>4天3晚瑜伽岛修行</p>
          <p>3晚豪华私密别墅,双人间共享,如需单人间须补差价40美金一晚</p>
          <p>24小时帆船私人专属享用</p>
          <p>所提行程用车,船票及部分餐饮</p>
        </div>
      </div>
      <div class="pay-list">
        <h2 class="main-title">费用总额</h2>
        <div class="contain">
          <p>8天7晚瑜伽静修航海过夜之旅报名人数6-20人，每人13520人民币</p>
        </div>
      </div>
      <div class="returnMoney">
        <h2>退费说明</h2>
        <p>距活动开始时间大于14天（不含活动当天）退出活动，退全款；</p>
        <p>距活动开始时间等于或不足14天且大于7天（不含活动当天），因故退出，退已交全款的80%；</p>
        <p>距活动开始时间等于或不足7天（不含活动当天）因故退出，或因不可抗力导致活动取消，退费部分为全款扣除已产生费用。</p>
        <p>临时退出，不退费用，但扣除已产生费用的余款可结转其他活动抵扣。</p>
      </div>
    </div>
  </div>
  <div class="f-r">
    <div class="intro">
      <h2>泰国介绍</h2>
      <div class="intro-content">
        <p>泰国（Thailand）是一个位于东南亚的君主立宪制国家。泰国位于中南半岛中部，其西部与北部和缅甸、安达曼海接壤，东北边是老挝，东南是柬埔寨，南边狭长的半岛与马来西亚相连。
          泰国是东南亚国家联盟成员国和创始国之一，同时也是亚太经济合作组织、亚欧会议和世界贸易组织成员。</p>
        <p>泰国是世界最闻名的旅游胜地之一。泰国是佛教之国，大多数泰国人信奉四面佛。佛教徒占全国人口的九成以上。</p>
        <p>泰国是东南亚国家联盟成员国和创始国之一，同时也是亚太经济合作组织、亚欧会议和世界贸易组织成员。</p>
      </div>
    </div>
    <div class="intro">
      <h2>特别提醒</h2>
      <div class="intro-content">
        <h3>泰国入境条款</h3>
        <p>泰国入境所需证件：护照、海关申报表、出入境卡（正联入境时收、副联出境时收）、海关申报单、出入境卡需用英文填写，其中姓名需用大写字母。将出入境卡夹在护照中经移民局办理入关手续后，到航站取出托运行李，然后拿海关申报单到海关检查处接受检查后出海关，进入迎宾厅</p>
        <h3>货币</h3>
        <div class="space"></div>
        <p> 泰国使用货币：泰铢</p>
        <p>银行：营业时间为（周日除外）07:30-15:30.</p>
      </div>
    </div>
    <h2 class="adv">推荐自由行</h2>
    <a href="" target="_blank" class="free-list new">
      <img src="<%=basePath%>/images/planListDetail/data/data12.jpg" alt="">
      <p>【大溪地】自由行 快艇海豚 百年茶园 23色土庄园四驱车</p>
      <div class="price">
        <span>￥630~700 / 人起</span>
        <ul>
          <li class="chuanpiao"></li>
          <li class="chuanpiao2"></li>
          <li class="plane"></li>
        </ul>
      </div>
    </a>
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
<script src="<%=basePath%>/js/planListDetail.js"></script>
<script>
  planListDetail.init();
</script>
</body>
</html>