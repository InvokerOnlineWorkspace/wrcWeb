/**
 *   说明 : 航海计划详情
 *   依赖 : jquery
 *   编写 : lx
 *   时间 : 2017-8-12
 */
"use strict";


var aboutusTeam = {
	/**
   *  lx 2016-11-25
   *  初始化
   *  parame  [json]    screenParmas     筛选条件参数
	 */
	init: function(){
    this.changeContent();
	},
  changeContent: function(){
    $(".team .nav li").click(function(){
      var index = $(this).index();
      $(this).addClass("on").siblings().removeClass("on")
      $(".content").eq(index).addClass("on").siblings().removeClass("on")
    })
  }
}