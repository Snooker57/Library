/************************************************************
 * Project:     企业邮二级页面侧边栏锚点定位
 * Author:      bingo 李振斌
 * Date:        2015-8-10
 * Copyright:   NetEase.com Inc. All rights reserved.
 ************************************************************/
;(function($, window, document,undefined) {

    var defaults = {
        threshold:70, //
        prefixH : 76, //预留高度
        floorWrap: undefined, //楼层选项容器
        floorSelector: undefined,  //楼层类名
        speen: 500 //速度
    }
    var floorWrap= undefined, //楼层选项容器
        floorSelector= undefined,  //楼层类名
        idx = 0 ;

    $.fn.lift = function(options) {
        var opts = $.extend({}, defaults, options);
            floorWrap = opts.floorWrap;
            floorSelector = opts.floorSelector;

        var f1 = $(floorSelector).eq(0).offset().top;
        var fs = $(floorWrap).find('a').size();
        var fss = new Array();
        for (i = 0; i < fs; i++) {
            fss[i] = $(floorSelector).eq(i).offset().top - opts.prefixH;
        }

        $(floorWrap).find('a').each(function(index){
            $(this).addClass('lift-emit');
            $(this).on('click',function(e){
                e.preventDefault();
                idx = index;
                gotofloor();
            });
        });

        $(window).scroll(function(){
            var currentTOP = $(window).scrollTop();

            if (currentTOP <= f1) {
                $('.lift-emit').removeClass('on').eq(0).addClass('on');
            }else{
                changefl(getFloor(currentTOP + opts.threshold));
            }

            resetPos();
        });

        var gotofloor = function() {
            $('.lift-emit').removeClass('on').eq(idx).addClass('on');
            var pos =  $(floorSelector).eq(idx).offset().top - opts.prefixH;// 获取该点到头部的距离
            $("html,body").animate({
                scrollTop : pos
            }, opts.speen);
        }

        function getFloor(fh){
            if(fs==0||fh<=f1){
                return idx = 0;
            }
            if(fh>=fss[fs-1]){
                return idx = fs - 1;
            }
            for (k=1; k<fs;k++) {
                if(fh>=fss[k-1]&&fh<fss[k]){
                    return idx = k-1;
                }
            }
        }
        function changefl(i){
            $('.lift-emit').removeClass('on').eq(idx).addClass('on');
        }

        function resetPos(){
            var docH = $(document).height();
            var winH = $(window).height();
            var scollTop = $(window).scrollTop();
            var sbH = $('.g-sidebar').height();
            var swhDiff = winH - sbH;
            var scollDiff = docH - scollTop;
            var thresholdH = 140;

            if(swhDiff < 240 && scollDiff <= winH + thresholdH){
                if(!$('.g-sidebar').hasClass('affix-bottom')){
                    $('.g-sidebar').addClass('affix-bottom');
                }
            }else{
                if($('.g-sidebar').hasClass('affix-bottom')){
                    $('.g-sidebar').removeClass('affix-bottom');
                }
            }
        }
        resetPos();
    }
})(jQuery, window, document);
