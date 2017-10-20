/**
 *   说明 : 玩儿船首页
 *   依赖 : jquery
 *   编写 : lx
 *   时间 : 2017-8-12
 */
"use strict";


var photoList = {
	/**
   *  lx 2016-11-25
   *  初始化
   *  parame  [json]    screenParmas     筛选条件参数
	 */
	init: function(){
    this.photoList();
  },
  photoList: function(){
    var _this = this;
    //打开相册
    $(".sharelist").click(function(){
      var index = $(this).index()
      _this.getData(index+1,function(data){
        _this.creatPhoto(data)
      });
    })
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
  },
  //创建相册
  creatPhoto: function(src){
    console.log(src)
    var baseurl = "http://" + window.location.host+"/wrc-web";
    var imgUrl = baseurl+src[0].picUrl
    var list = '<a class="swiper-slide on"><img src='+ imgUrl +' alt=""></a>'
    for(var i=1;i<src.length;i++){
      var imgUrls = baseurl+ src[i].picUrl
      list += '<a class="swiper-slide"><img src='+ imgUrls +' alt=""></a>'
    }
    var dom = $('<div class="wrap">'
      +'<div class="showImg">'
        +'<img src="'+ src[0].picUrl +'" alt="">'
      +'</div>'
      +'<div class="swiper-container photoList">'
        +'<div class="swiper-wrapper">'
          + list 
        +'</div>'
      +'</div>'
      +'<div class="swiper-button-prev"></div>'
      +'<div class="swiper-button-next"></div>'
      +'<a class="cancle"></a>'
    +'</div>')
    $(".photoWrap").append(dom)
    //禁止冒泡
    $('.photoWrap .wrap').click(function(event){
      event.preventDefault();
      event.stopPropagation();
    });
    //关闭窗口
    $('.photoWrap,.cancle').click(function(event){
      console.log("123")
      $(".photoWrap").hide();
      $(".photoWrap .wrap").remove()
    });
    _this.photoListInit();
    $(".photoWrap").show();
  },
  //ajax获取数据或者同步外部传入
  getData: function(index,callback){
    var url = "http://118.31.11.173:8089/wrc-web/photolist";
    url = "json/photolist.json"
    $.get(url, { albumId: index },
      function(data){
      callback(data.picList)
    });

    //打开注释，这里注释掉
    // callback(data.picList)
    //打开注释，这里注释掉
  }
}