/**
 *   说明 : 游玩目的地
 *   依赖 : jquery
 *   编写 : lx
 *   时间 : 2017-8-12
 */
"use strict";


var destination = {
	/**
   *  lx 2016-11-25
   *  初始化
   *  parame  [json]    screenParmas     筛选条件参数
	 */
	init: function(){
    this.banner();
    this.map();
	},
	banner: function(){
    var first = $(".content .swiper-slide").eq(0);
    var src = first.attr("data-src");
    first.css("background","url("+src+") no-repeat center center / auto 100%");
    var mySwiper = new Swiper('.content',{//swiper初始化
      loop: true,
      autoplay: 3000,
      pagination : '.pagination',
      paginationClickable :true,
      onSlideChangeStart: function(swiper){
        $(".content .swiper-slide").each(function(i){
          if(i != 0){
            var src = $(this).attr("data-src");
            $(this).css("background","url("+src+") no-repeat center center / auto 100%");
          }
        })
      }
    });
  },
  map: function(){
    $(".banner li").mouseover(function(){
      console.log()
      if($(".dom-title").length == 0){
        $(this).find("a").append("<div class='dom-title'><h2>古巴</h2></div>")
      }
    }).mouseout(function(){
      $(".dom-title").remove();
    })
  }
}