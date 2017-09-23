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
      var data = _this.getData(index+1);
      _this.creatPhoto(data.picList)
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
    console.log(src)
    var list = '<a class="swiper-slide on"><img src='+ src[0].picUrl +' alt=""></a>'
    for(var i=1;i<src.length;i++){
      list += '<a class="swiper-slide"><img src='+ src[i].picUrl +' alt=""></a>'
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
  getData: function(index){
    // $.get("http://118.31.11.173:8089/wrc-web/photolist", { albumId: index },
    //   function(data){
      // return data
    // });

    //打开注释，这里注释掉
    var data = {"picList":[{"id":"1","gmtCreated":1505554394000,"gmtModified":1505554398000,"createdBy":"admin","modifiedBy":"admin","picName":"cover","picIntro":"澳大利亚封面","picUrl":"/album/destination/Australia/cover.jpg","albumId":"1"},{"id":"2","gmtCreated":1505554394000,"gmtModified":1505554398000,"createdBy":"admin","modifiedBy":"admin","picName":"001","picIntro":"","picUrl":"/album/destination/Australia/001.jpg","albumId":"1"},{"id":"3","gmtCreated":1505554394000,"gmtModified":1505554398000,"createdBy":"admin","modifiedBy":"admin","picName":"002","picIntro":"","picUrl":"/album/destination/Australia/002.jpg","albumId":"1"},{"id":"4","gmtCreated":1505554394000,"gmtModified":1505554398000,"createdBy":"admin","modifiedBy":"admin","picName":"003","picIntro":"","picUrl":"/album/destination/Australia/003.jpg","albumId":"1"},{"id":"5","gmtCreated":1505554394000,"gmtModified":1505554398000,"createdBy":"admin","modifiedBy":"admin","picName":"004","picIntro":"","picUrl":"/album/destination/Australia/004.jpg","albumId":"1"},{"id":"6","gmtCreated":1505554394000,"gmtModified":1505554398000,"createdBy":"admin","modifiedBy":"admin","picName":"005","picIntro":"","picUrl":"/album/destination/Australia/005.jpg","albumId":"1"},{"id":"7","gmtCreated":1505554394000,"gmtModified":1505554398000,"createdBy":"admin","modifiedBy":"admin","picName":"006","picIntro":"","picUrl":"/album/destination/Australia/006.jpg","albumId":"1"},{"id":"8","gmtCreated":1505554394000,"gmtModified":1505554398000,"createdBy":"admin","modifiedBy":"admin","picName":"007","picIntro":"","picUrl":"/album/destination/Australia/007.jpg","albumId":"1"},{"id":"9","gmtCreated":1505554394000,"gmtModified":1505554398000,"createdBy":"admin","modifiedBy":"admin","picName":"008","picIntro":"","picUrl":"/album/destination/Australia/008.jpg","albumId":"1"},{"id":"10","gmtCreated":1505554394000,"gmtModified":1505554398000,"createdBy":"admin","modifiedBy":"admin","picName":"009","picIntro":"","picUrl":"/album/destination/Australia/009.jpg","albumId":"1"},{"id":"11","gmtCreated":1505554394000,"gmtModified":1505554398000,"createdBy":"admin","modifiedBy":"admin","picName":"010","picIntro":"","picUrl":"/album/destination/Australia/010.jpg","albumId":"1"},{"id":"12","gmtCreated":1505554394000,"gmtModified":1505554398000,"createdBy":"admin","modifiedBy":"admin","picName":"011","picIntro":"","picUrl":"/album/destination/Australia/011.jpg","albumId":"1"}]}
    return data
    //打开注释，这里注释掉
  }
}