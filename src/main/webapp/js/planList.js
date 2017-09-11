/**
 *   说明 : 航海计划列表
 *   依赖 : jquery
 *   编写 : lx
 *   时间 : 2017-8-12
 */
"use strict";


var planList = {
	/**
   *  lx 2016-11-25
   *  初始化
   *  parame  [json]    screenParmas     筛选条件参数
	 */
	init: function(){
    this.banner();
    this.list();
	},
	banner: function(){
		$(".banner .swiper-slide").each(function(i){
      var src = $(this).attr("data-src");
      $(this).css("background","url("+src+") no-repeat center center / auto 100%");
    })
    var mySwiper = new Swiper('.banner',{//swiper初始化
      loop: true,
      autoplay: 3000,
      pagination : '.pagination',
      paginationClickable :true,
    });
  },
  list: function(){//列表地区选择器
    $(".content-title li").click(function(){
      $(this).addClass("on").siblings().removeClass("on")
    })
  }
}