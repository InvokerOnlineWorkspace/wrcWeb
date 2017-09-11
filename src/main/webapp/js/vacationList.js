/**
 *   说明 : 玩儿船瀑布流
 *   依赖 : jquery
 *   编写 : lx
 *   时间 : 2017-8-12
 */
"use strict";


var vacationList = {
	/**
   *  lx 2017-09-05
   *  初始化
   *  parame  [json]    screenParmas     筛选条件参数
	 */
	init: function(){
		// this.pinterest();
		this.list();
	},
	/**
   *  lx 2016-11-25
   *  瀑布流
   *  parame  [json]    screenParmas     筛选条件参数
	 */
	pinterest: function(){
    var curpage= $('#curpage').val();
    var flag = false, //滚动是否还有数据
        isLoading = false; //正在加载
    var num = 0,
        pagesize = 10,
        minUl = $(".qa-wrap")[0],
        oUl = $(".qa-wrap")[1],
        oContainer= $("#waterfall");
    var dataList=[],
        readyDataList=[];
    var praiseModel = {
      dataListLeft: ko.observableArray(),     // 左侧列表数据
      dataListRight: ko.observableArray()     // 右侧列表数据
    }
    ko.applyBindings(praiseModel);
    getDataList();
    function createCon(){
      for(var n=0; n < pagesize; n++){
        if(num >= dataList.length){
          return false;
        }
        var tag = praiseModel.dataListLeft
        if(minUl.offsetHeight>oUl.offsetHeight){
          tag = praiseModel.dataListRight;
        }
        tag.push(dataList[num])
        num++;
      }
      if(num==dataList.length){
        num = 0;
      }
    }
    function getVal(tag){
      var result,
          num;
      tag.each(function(i){
        if($(this).attr("class") == "active"){
          num = i;
        }
      })
      result = tag.eq(num).attr("data-condition");
      return result;
    }
    function getDataList(){
      var quesType = getVal($('.main-nav li'));
      var cateId = getVal($('.all ul li'));
      var params = {
        quesType: quesType,
        cateId: cateId,
        curpage: curpage
      }
      isLoading = true;
      $.ajax({
        type: 'POST',
        url: "/getdecSupervisionAskInfoByPage",
        data: params,
        success: function (data) {
          readyDataList = data.result;
          if(readyDataList.length < pagesize){
            flag = true;
          }
          curpage = data.curpage;
          isLoading = false;
        },
        error: function (data) {
          common.removeLoading();
        }
      });
    }
    function showList(){
      //开始分页
      var mark = true;
      if($(".nomore").css("display") == "none"){
        common.loadingAnimate($(".content-main .main"));
      }
      dataList = readyDataList;
      if(dataList.length < pagesize){
        $(".main .nomore").show().find("p").html("没有更多内容了");
        common.removeLoading();
        mark = false;
        if(dataList.length > 0){
          mark = true;
        }
      }
      if(mark){
        common.removeLoading();
        createCon();
      }
    }
    if($("#isdata").val() != 0){
      window.onscroll = function(){ //滚动加载更多数据
        var _scT = document.documentElement.scrollTop ||document.body.scrollTop;
        var _scH = document.documentElement.scrollHeight || document.body.scrollHeight 
        var _cH = document.documentElement.clientHeight || document.body.clientHeight ; 
        if( _scT >=_scH-_cH - 374){
          showList();
          if(!flag && !isLoading){
            getDataList();
            return false;
          }
        } 
      }
    }
	},
	list: function(){
		$.fn.pinterest = function(options){
			var self = $(this);
			var isLoading = false; //是否正在加载
			init();//初始化
			getData();// 创建初始数据
			function init(){
				options = $.extend({},$.fn.pinterest.defaults,options || {});
				for(var i=0;i<options.ulLength;i++){
					self.append("<ul class='listWrap'></ul>")
				}
			};
			function creatBox(data){//创建盒子
				//label
				var labelLI = ""
				for(var i=0;i<data.label.length;i++){
					labelLI += '<li>'+ data.label[i] +'</li>';
				}
				var labelUl = '<ul class="label">'+labelLI+'</ul>'
				var content = $('<div class="sharelist">'
						+'<img src='+data.src+' alt="">'
					+'<div class="contain">'
						+'<h2>'+ data.title +'</h2>'
						+'<p>'+data.content+'</p>'
						+ labelUl
						+'<div class="collect">'
							+'<dl class="f-l">'
								+'<dt>'+data.date+'</dt>'
								+'<dd>'+data.year+'</dd>'
							+'</dl>'
							+'<div class="share f-r">'
								+'<span>分享</span>'
							+'</div>'
							+'<div class="collection f-r">'
								+'<span>'+data.colect+'</span>'
							+'</div>'
						+'</div>'
					+'</div>'
				+'</div>')
				return content;
			};
			function getData(){//加载数据,请求ajax
				// isLoading = true;


				///////替换ajax注释部分后这里注释或删除掉(测试部分)  start
				for(var i=0;i<options.pagesize;i++){
					var ulList = self.find(".listWrap");
					var tagUl = ulList.eq(0);
					ulList.each(function(i){
						if($(this).height() < tagUl.height()){
							tagUl = $(this);
						}
					})
					var data = {
						src: "images/vacationList/data/data02.jpg",
						title: "澳大利亚-圣灵群岛",
						content: "早就听说哈迪大堡礁是澳大利亚排名第一的美景，到艾尔利海滩第一天就订了直升飞机空中俯瞰哈迪大堡礁，果然美不胜收，名不虚传。接着第二天游玩了白日梦岛……",
						label: ["白色天堂沙滩","大堡礁世界遗产保护区","珊瑚岛"],
						date: "07.10",
						year: "2017",
						colect: "1205"
					}
					tagUl.append(creatBox(data));
				}
				///////替换ajax注释部分后这里注释或删除掉  end


				///////ajax请求部分 (正式部分)
				// $.ajax({ 
				// 	url: "test.html", 
				// 	success: function(result){
				// 		for(var i=0;i<result.length;i++){
				// 			var ulList = self.find(".listWrap");
				// 			var tagUl = ulList.eq(0);
				// 			ulList.each(function(i){
				// 				if($(this).height() < tagUl.height()){
				// 					tagUl = $(this);
				// 				}
				// 			})
				// 			//result[i]的值给data
				// 			var data = {
				// 				src: "images/vacationList/data/data02.jpg",//result[i].src
				// 				title: "澳大利亚-圣灵群岛",
				// 				content: "早就听说哈迪大堡礁是澳大利亚排名第一的美景，到艾尔利海滩第一天就订了直升飞机空中俯瞰哈迪大堡礁，果然美不胜收，名不虚传。接着第二天游玩了白日梦岛……",
				// 				label: ["白色天堂沙滩","大堡礁世界遗产保护区","珊瑚岛"],
				// 				date: "07.10",
				// 				year: "2017",
				// 				colect: "1205"
				// 			}
				// 			tagUl.append(creatBox(data));
				// 		}
				// 	}
				// });
				///////ajax请求部分
			};
			window.onscroll = function(){ //滚动加载更多数据
				var _scT = document.documentElement.scrollTop ||document.body.scrollTop;
				var _scH = document.documentElement.scrollHeight || document.body.scrollHeight
				var _cH = document.documentElement.clientHeight || document.body.clientHeight ;
				if( _scT >=_scH-_cH - options.bottomHeight){
					// if(flag){
					//   $(".main .nomore").show().find("p").html("没有更多内容了");
					//   return false;
					// }
					// if(!isLoading){
						getData();
					// }
				}
			}
		}
		$.fn.pinterest.defaults = {
			ulLength : 4,  //列表ul
			pagesize : 10, //分页
			page : 0,
			bottomHeight : 0 //滚动条距离底部距离
		}
	}
}