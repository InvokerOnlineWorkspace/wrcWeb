/**
 *   说明 : 玩儿船常见问题
 *   依赖 : jquery
 *   编写 : lx
 *   时间 : 2017-8-12
 */
"use strict";


var qa = {
	/**
   *  lx 2016-11-25
   *  初始化
   *  parame  [json]    screenParmas     筛选条件参数
	 */
	init: function(){
		this.openQa();
	},
	openQa: function(){
		$(".qalist").click(function(){
			console.log()
			if($(this)[0].className.indexOf("open") == -1){
				$(this).addClass("open")
			}else{
				$(this).removeClass("open")
			}
    })
	}
}