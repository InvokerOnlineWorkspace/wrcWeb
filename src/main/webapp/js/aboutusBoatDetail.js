/**
 *   说明 : 不同的帆船详情页
 *   依赖 : jquery
 *   编写 : lx
 *   时间 : 2017-8-12
 */
"use strict";


var aboutusBoatDetail = {
	/**
   *  lx 2016-11-25
   *  初始化
   *  parame  [json]    screenParmas     筛选条件参数
	 */
	init: function(){
    this.choose();
  },
	choose: function(){
		$(".imgList li").click(function(i){
      var index = $(this).index();
      console.log(index)
      $(this).addClass("on").siblings().removeClass("on")
      var src = $(this).find("img").attr("src")
      $(".showImg").find("img").attr("src",src)
    })
	}
}