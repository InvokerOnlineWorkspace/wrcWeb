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
    var data = this.getData();
    //打开相册
    $(".sharelist").click(function(){
      var index = $(this).index()
      _this.creatPhoto(data[index].src)
      _this.photoListInit();
      $(".photoWrap").show();
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
    var list = '<a class="swiper-slide on"><img src='+ src[0] +' alt=""></a>'
    for(var i=1;i<src.length;i++){
      list += '<a class="swiper-slide"><img src='+ src[i] +' alt=""></a>'
    }
    var dom = $('<div class="wrap">'
      +'<div class="showImg">'
        +'<img src="'+ src[0] +'" alt="">'
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
  },
  //ajax获取数据或者同步外部传入
  getData: function(){
    var  data = [
      {
        src: [
          'images/photoList/data/data03.jpg',
          'images/photoList/data/data02.jpg',
          'images/photoList/data/data03.jpg',
          'images/photoList/data/data04.jpg',
          'images/photoList/data/data01.jpg',
          'images/photoList/data/data02.jpg',
          'images/photoList/data/data03.jpg',
        ]
      },
      {
        src: [
          'images/photoList/data/data01.jpg',
          'images/photoList/data/data02.jpg',
          'images/photoList/data/data03.jpg',
          'images/photoList/data/data04.jpg',
          'images/photoList/data/data01.jpg',
          'images/photoList/data/data02.jpg',
          'images/photoList/data/data03.jpg',
        ]
      },
      {
        src: [
          'images/photoList/data/data02.jpg',
          'images/photoList/data/data02.jpg',
          'images/photoList/data/data03.jpg',
          'images/photoList/data/data04.jpg',
          'images/photoList/data/data01.jpg',
          'images/photoList/data/data02.jpg',
          'images/photoList/data/data03.jpg',
        ]
      }
    ]
    return data
  }
}