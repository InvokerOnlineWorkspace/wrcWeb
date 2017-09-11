/**
 *   说明 : 航海计划详情
 *   依赖 : jquery
 *   编写 : lx
 *   时间 : 2017-8-12
 */
"use strict";


var planListDetail = {
	/**
   *  lx 2016-11-25
   *  初始化
   *  parame  [json]    screenParmas     筛选条件参数
	 */
	init: function(){
    this.banner();
    this.changeContent();
	},
	banner: function(){
    var mySwiper = new Swiper('.pagenav',{//swiper初始化
      slidesPerView : 4
    });
    $('.swiper-button-prev').click(function(){
      mySwiper.swipePrev(); 
    })
    $('.swiper-button-next').click(function(){
      mySwiper.swipeNext(); 
    });
    $(".swiper-slide").click(function(){
      $(this).addClass("on").siblings().removeClass("on");
      let src = $(this).find("img").attr("src")
      console.log(src)
      $(".showImg img").attr("src",src)
    })
  },
  changeContent: function(){
    $(".select-title li").click(function(){
      var index = $(this).index();
      console.log($(".main-content")[index])
      $(this).addClass("on").siblings().removeClass("on")
      $(".main-content").eq(index).addClass("on").siblings().removeClass("on")
    })
  }
}