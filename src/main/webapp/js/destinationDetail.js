/**
 *   说明 : 游玩目的地
 *   依赖 : jquery
 *   编写 : lx
 *   时间 : 2017-8-12
 */
"use strict";


var destinationDetail = {
	/**
   *  lx 2016-11-25
   *  初始化
   *  parame  [json]    screenParmas     筛选条件参数
	 */
	init: function(){
		this.banner();
	},
	banner: function(){
    var mySwiper = new Swiper('.pagenav',{//swiper初始化
      pagination : '.pagination',
      paginationClickable :true,
    });
    $(".swiper-pagination-switch").each(function(i,item){
      item.innerHTML = i+1
    })
    $(".swiper-slide").click(function(){
      $(this).addClass("on").siblings().removeClass("on");
      let src = $(this).attr("src")
      $(".showImg img").attr("src",src)
    })
	}
}