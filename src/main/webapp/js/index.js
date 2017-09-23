/**
 *   说明 : 玩儿船首页
 *   依赖 : jquery
 *   编写 : lx
 *   时间 : 2017-8-12
 */
"use strict";


var index = {
	/**
   *  lx 2016-11-25
   *  初始化
   *  parame  [json]    screenParmas     筛选条件参数
	 */
	init: function(){
    this.banner();
    this.top();
    this.photoList();
  },
  top: function(){//顶部
    window.onscroll = function(param){
      var top = $(".top");
      if($(document).scrollTop() <= 800){
        top.removeClass("bg")
      }else{
        top.addClass("bg")
      }
    }
  },
	banner: function(){//轮播
    var first = $(".banner .swiper-slide").eq(0)
    var src = first.attr("data-src");
    first.css("background","url("+src+") no-repeat center center / auto 100%");
    var mySwiper = new Swiper('.banner',{//swiper初始化
      loop: true,
      autoplay: 3000,
      pagination : '.pagination',
      paginationClickable :true,
      onSlideChangeStart: function(swiper){
        $(".banner .swiper-slide").each(function(i){
          if(i != 0){
            var src = $(this).attr("data-src");
            $(this).css("background","url("+src+") no-repeat center center / auto 100%");
          }
        })
      }
    });
  },
  photoList: function(){
    var _this = this;
    //打开相册
    $("#gallery").click(function(){
      _this.photoListInit();
      $(".photoWrap").show();
    })
    //关闭窗口
    $('.photoWrap,.cancle').click(function(event){
      $(".photoWrap").hide();
    });
    $('.photoWrap .wrap').click(function(event){
      event.preventDefault();
      event.stopPropagation();
    });
  },
  photoListInit: function(){
    var mySwiper = new Swiper('.photoList',{//swiper初始化
      slidesPerView : 5,
      spaceBetween: 20
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
  }
}