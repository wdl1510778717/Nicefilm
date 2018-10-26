window.onload=function(){
      //首页效果：

      // 导航tab鼠标进入效果
         var $tabs=$(".nav-bar .bar-content .nav>li");
         $(".nav-bar .bar-content .nav>li:first-child>a").addClass("actived");
         $tabs.on("mouseenter",function(){
          var $tab=$(this);
          $(".nav-bar .bar-content .nav>li:first-child>a").removeClass("actived");
             // $tab.toggleClass("actived")
             //小白点样式
             if ($tab.has("actived")) {
              $tab.parent().children().removeClass("actived")
             }
             $tab.addClass("actived")
         })
      // 导航tab鼠标移出效果
      // 导航tab进入，下拉菜单显示
          $(".nav-bar .bar-content .nav>li>div:last-child").hide();
          var $list_item_box=$(".nav-bar .bar-content .nav>li>div:last-child").parent();
          $list_item_box.on("mouseenter",function(){
             var $tab=$(this);
             var $div=$tab.children().last()
             $div.show();
          })
      // 导航tab移出，下拉菜单隐藏
          $list_item_box.on("mouseleave",function(){
             var $tab=$(this);
             var $div=$tab.children().last()
             $div.hide();
          })
      // 下拉菜单列表小白点显示
           var $list_item_box_a=$(".nav-bar .bar-content .nav>li>div:last-child").children();
           $list_item_box_a.on("mouseenter",function(){
            // e.preventDefault();
            var $a=$(this);
               $a.addClass("white-circle-bar")
               $a.parent().parent().removeClass("actived");
           })
      // 下拉菜单列表小白点隐藏
           $list_item_box_a.on("mouseleave",function(){
            // e.preventDefault();
            var $a=$(this);
               $a.removeClass("white-circle-bar")
           
           })
      // 导航栏滚轮事件
           if ($(window).scrollTop()>=45) {
              $("nav").addClass("top-nav-scroll");
           }else{
              $("nav").addClass("top-nav");
           }
           $(window).on("scroll",function(){
             var $this=$(this);
             var $div=$("nav");
             if($this.scrollTop()>=45){
                $div.removeClass("top-nav")
                $div.addClass("top-nav-scroll")
             }else{
                $div.removeClass("top-nav-scroll")
                $div.addClass("top-nav")
             }
           })
       
      // 首页项目案例部分轮播图
          $('.movie-hidden-box .show-movies').eq(0).css('display','block');
          $('.owl-img-box a').click(function(){
            var i = $(this).index();
            var div = $('.owl-img-list-one-img-after')
            $('.owl-img-box a .owl-img-list-one-img-after').removeClass('owl-img-active')
            $(this).find(div).addClass('owl-img-active');
            $('.movie-hidden-box .show-movies').each(function(index){
              if(index == i){
                $('.movie-hidden-box .show-movies').css('display','none');
                $('.movie-hidden-box .show-movies').eq(index).css('display','block');
              }
            })
          })
      // 首页nicefilm部分的旋转效果
          var $small_circle_link_icon=$(".small-circle-link_icon");
          var $nicefilm_small_circle_img=$(".nicefilm-small-circle img");
          $small_circle_link_icon.on("mouseenter",function(e){
            e.preventDefault();
            var $this=$(e.target);
              $nicefilm_small_circle_img.addClass("nicefilm-small-circle-mouserenter");
          })
          $small_circle_link_icon.on("mouseleave",function(e){
            e.preventDefault();
            var $this=$(e.target);
              $nicefilm_small_circle_img.removeClass("nicefilm-small-circle-mouserenter");
          })
      


      // portfolio页面效果：
      // portfolio页面选项卡
          var $porints=$('#container .film-items-box')
          $porints.eq(0).css('display',"block");
          var $porint = $('.nav-list-box .nav-list-items .nav-list-item')
            $porint.click(function(e){
            var i = $(this).index();
            $porint.removeClass('nav-active')
            $(this).addClass('nav-active');
              $porints.each(function(index){
                if(index == i){
                  $porints.css('display','none');
                  $porints.eq(index).css('display','block');
                }
              })
            })
      

      // film_intro页面效果：
      // film_intro页面的轮播效果   
         var $fil_intro_imgs=$(".content-boxs .img-items");
         $("#film_intro_prev").on("click",function(){
          var $this=$(this);
          console.log($("#film_intro_prev"));
            $fil_intro_imgs.animate({"left":-1300},1000);
            $this.css({"color":"#B3B3B3"});
            $("#film_intro_next").css({"color":"#666666"})
         }) 
           $("#film_intro_next").on("click",function(){
             var $this=$(this);
             $fil_intro_imgs.animate({"left":0},1000);
               $this.css({"color":"#B3B3B3"});
               $("#film_intro_prev").css({"color":"#666666"})
           }) 
   
   
   








}