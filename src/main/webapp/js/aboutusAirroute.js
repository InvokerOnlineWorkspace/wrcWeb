/**
 *   说明 : 不同的航线
 *   依赖 : jquery
 *   编写 : lx
 *   时间 : 2017-8-12
 */
"use strict";


var aboutusAirroute = {
	/**
   *  lx 2016-11-25
   *  初始化
   *  parame  [json]    screenParmas     筛选条件参数
	 */
	init: function(){
		this.banner();
	},
	banner: function(){
    var mySwiper = new Swiper('.banner',{//swiper初始化
      onInit: function(swiper){
        swiper.swipeNext()
      },
      // spaceBetween : 5,
    });
    $('.swiper-button-prev').click(function(){
      mySwiper.swipePrev(); 
    })
    $('.swiper-button-next').click(function(){
      mySwiper.swipeNext(); 
    });
    $(".swiper-slide").each(function() {
      var src = $(this).attr("data-src");
      $(this).css("background","url("+src+") no-repeat center center");
    });
	}
}