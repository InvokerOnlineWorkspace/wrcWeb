//懒加载
/*!
 *  Echo v1.4.0
 *  Lazy-loading with data-* attributes, offsets and throttle options
 *  Project: https://github.com/toddmotto/echo
 *  by Todd Motto: http://toddmotto.com
 *  Copyright. MIT licensed.
 */
window.Echo = (function(window, document, undefined) {
  var store = [],
  offset,
  throttle,
  poll;

  var _inView = function(el) {
    var coords = el.getBoundingClientRect();
    return ((coords.top >= 0 && coords.left >= 0 && coords.top) <= (window.innerHeight || document.documentElement.clientHeight) + parseInt(offset));
  };

  var _pollImages = function() {
    for (var i = store.length; i--;) {
      var self = store[i];
      if (_inView(self)) {
        self.src = self.getAttribute('data-echo');
        store.splice(i, 1);
        self.className = self.className + " over"
      }
    }
  };

  var _throttle = function() {
    clearTimeout(poll);
    poll = setTimeout(_pollImages, throttle);
  };

  var init = function(obj) {
    var nodes = document.querySelectorAll('[data-echo]');
    var opts = obj || {};
    offset = opts.offset || 0;
    throttle = opts.throttle || 250;

    for (var i = 0; i < nodes.length; i++) {
      store.push(nodes[i]);
    }

    _throttle();

    if (document.addEventListener) {
      window.addEventListener('scroll', _throttle, false);
    } else {
      window.attachEvent('onscroll', _throttle);
    }
  };

  return {
    init: init,
    render: _throttle
  };

})(window, document);

//
Echo.init({//懒加载
  offset: 0,//离可视区域多少像素的图片可以被加载
　  throttle: 0 //图片延时多少毫秒加载
}); 

common = {
  //在线联系
  consult : function(){
    console.log("123")
    $("body").append(
      '<div class="consultWrap">'
      +'<div class="consult"><img src="../images/sprite/liuyan.png" alt=""><p>在线咨询</p></div>'
      +'<div class="consultBox">'
          +'<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=739855060&site=qq&menu=yes">'
          +'<img border="0" src="http://wpa.qq.com/pa?p=2:739855060:41" alt="点击这里给我发消息" title="点击这里给我发消息"/>'
          +'</a>'
          +'<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=739855060&site=qq&menu=yes">'
          +'<img border="0" src="http://wpa.qq.com/pa?p=2:739855060:41" alt="点击这里给我发消息" title="点击这里给我发消息"/>'
          +'</a>'
          +'<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=739855060&site=qq&menu=yes">'
          +'<img border="0" src="http://wpa.qq.com/pa?p=2:739855060:41" alt="点击这里给我发消息" title="点击这里给我发消息"/>'
          +'</a>'

          // +'<div class="img"><img src="../images/sprite/qqcode.png" alt=""></div>'
        +'</div>'
      +'</div>'
    )
    $(".consult").click(function(){
      console.log($(".consultBox"))
      $(".consultBox").slideToggle();
    })
  },
  //预约
  book: function(){
    $(".book").click(function(e){//阻止冒泡
      e.stopPropagation()
    })
    $(".bookWrap,.book-close").click(function(e){//关闭预约窗口
      $(".bookWrap").hide();
    })
    $(".btn-book").click(function(){//打开预订窗口
      $(".bookWrap").show();
    })
    $("#book-tel").change(function(){//电话号码验证
      var val = $(this).val()
      telCheck(val);
    })
    $(".book-sub").click(function(){
      check(function(){
        // $(".bookWrap").hide();//关闭窗口
        // ajax
        // ajax(function(){
        //   success();
        // })
        // success后执行
        success();
        function success(){
          $(".dialog").show()
          setTimeout(function(){
            $(".bookWrap").hide();//关闭窗口
            $(".dialog").hide()
          },1000)
        }
      })
    })
    var check = function(callback){
      if($("#book-name").val() == ""){
        warn("请输入姓名")
        return false;
      }else if($("#book-tel").val() == ""){
        warn("请输入手机号")
        return false;
      }else if(telCheck($("#book-tel").val())){
        callback();
        return true;
      }
    }
    var warn = function(msg){//警示语
      $(".book-warn").html(msg);
    }
    var telCheck = function(val){//电话号码校验
      if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(val))){ 
        warn("请输入合法手机号");
        return false
      }else if(val.length != 11){
        warn("请输入11位手机号码");
        return false
      }else{
        warn("")
        return true
      }
    }
  }
}