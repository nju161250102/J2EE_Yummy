<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Yummy - 地址选取</title>
    <link href="/static/address/public.css" rel="stylesheet" type="text/css">
    <script src="/static/address/hm.js"></script>
    <script type="text/javascript" src="/static/address/api.js"></script>
    <script type="text/javascript" src="/static/address/getscript.js"></script>
    <script type="text/javascript" src="/static/address/tangram.js"></script>
    <script type="text/javascript" src="/static/address/mapext.js"></script>
    <script type="text/javascript" src="/static/address/public.js"></script>
    <script type="text/javascript">
        DomReady.ready(localsearch);
    </script>
<style type="text/css">.BMap_mask{background:transparent url(http://api0.map.bdimg.com/images/blank.gif);}.BMap_noscreen{display:none;}.BMap_button{cursor:pointer;}.BMap_zoomer{background-image:url(http://api0.map.bdimg.com/images/mapctrls1d3.gif);background-repeat:no-repeat;overflow:hidden;font-size:1px;position:absolute;width:7px;height:7px;}.BMap_stdMpCtrl div{position:absolute;}.BMap_stdMpPan{width:44px;height:44px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat;}.BMap_ie6 .BMap_stdMpPan{background:none;}.BMap_ie6 .BMap_smcbg{left:0;width:44px;height:464px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src="http://api0.map.bdimg.com/images/mapctrls2d0.png");}.BMap_ie6 .BMap_stdMpPanBg{z-index:-1;}.BMap_stdMpPan .BMap_button{height:15px;width:15px;}.BMap_panN,.BMap_panW,.BMap_panE,.BMap_panS{overflow:hidden;}.BMap_panN{left:14px;top:0;}.BMap_panW{left:1px;top:12px;}.BMap_panE{left:27px;top:12px;}.BMap_panS{left:14px;top:25px;}.BMap_stdMpZoom{top:45px;overflow:hidden;}.BMap_stdMpZoom .BMap_button{width:22px;height:21px;left:12px;overflow:hidden;background-image:url(http://api0.map.bdimg.com/images/mapctrls2d0.png);background-repeat:no-repeat;z-index:10;}.BMap_ie6 .BMap_stdMpZoom .BMap_button{background:none;}.BMap_stdMpZoomIn{background-position:0 -221px;}.BMap_stdMpZoomOut{background-position:0 -265px;}.BMap_ie6 .BMap_stdMpZoomIn div{left:0;top:-221px;}.BMap_ie6 .BMap_stdMpZoomOut div{left:0;top:-265px;}.BMap_stdMpType4 .BMap_stdMpZoom .BMap_button{left:0;overflow:hidden;background:-webkit-gradient(linear,50% 0,50% 100%,from(rgba(255,255,255,0.85)),to(rgba(217,217,217,0.85)));z-index:10;-webkit-border-radius:22px;width:34px;height:34px;border:1px solid rgba(255,255,255,0.5);-webkit-box-shadow:0 2px 3.6px #CCC;display:-webkit-box;-webkit-box-align:center;-webkit-box-pack:center;-webkit-box-sizing:border-box;}.BMap_stdMpType4 .BMap_smcbg{position:static;background:url(http://api0.map.bdimg.com/images/mapctrls2d0_mb.png) 0 0 no-repeat;-webkit-background-size:24px 32px;}.BMap_stdMpType4 .BMap_stdMpZoomIn{background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomIn .BMap_smcbg{width:24px;height:24px;background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomOut{background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomOut .BMap_smcbg{width:24px;height:6px;background-position:0 -25px;}.BMap_stdMpSlider{width:37px;top:18px;}.BMap_stdMpSliderBgTop{left:18px;width:10px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat -23px -226px;}.BMap_stdMpSliderBgBot{left:19px;height:8px;width:10px;top:124px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat -33px bottom;}.BMap_ie6 .BMap_stdMpSliderBgTop,.BMap_ie6 .BMap_stdMpSliderBgBot{background:none;}.BMap_ie6 .BMap_stdMpSliderBgTop div{left:-23px;top:-226px;}.BMap_ie6 .BMap_stdMpSliderBgBot div{left:-33px;bottom:0;}.BMap_stdMpSliderMask{height:100%;width:24px;left:10px;cursor:pointer;}.BMap_stdMpSliderBar{height:11px;width:19px;left:13px;top:80px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat 0 -309px;}.BMap_stdMpSliderBar.h{background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat 0 -320px;}.BMap_ie6 .BMap_stdMpSliderBar,.BMap_ie6 .BMap_stdMpSliderBar.h{background:none;}.BMap_ie6 .BMap_stdMpSliderBar div{top:-309px;}.BMap_ie6 .BMap_stdMpSliderBar.h div{top:-320px;}.BMap_zlSt,.BMap_zlCity,.BMap_zlProv,.BMap_zlCountry{position:absolute;left:34px;height:21px;width:28px;background-image:url(http://api0.map.bdimg.com/images/mapctrls2d0.png);background-repeat:no-repeat;font-size:0;cursor:pointer;}.BMap_ie6 .BMap_zlSt,.BMap_ie6 .BMap_zlCity,.BMap_ie6 .BMap_zlProv,.BMap_ie6 .BMap_zlCountry{background:none;overflow:hidden;}.BMap_zlHolder{display:none;position:absolute;top:0;}.BMap_zlHolder.hvr{display:block;}.BMap_zlSt{background-position:0 -380px;top:21px;}.BMap_zlCity{background-position:0 -401px;top:52px;}.BMap_zlProv{background-position:0 -422px;top:76px;}.BMap_zlCountry{background-position:0 -443px;top:100px;}.BMap_ie6 .BMap_zlSt div{top:-380px;}.BMap_ie6 .BMap_zlCity div{top:-401px;}.BMap_ie6 .BMap_zlProv div{top:-422px;}.BMap_ie6 .BMap_zlCountry div{top:-443px;}.BMap_stdMpType1 .BMap_stdMpSlider,.BMap_stdMpType2 .BMap_stdMpSlider,.BMap_stdMpType3 .BMap_stdMpSlider,.BMap_stdMpType4 .BMap_stdMpSlider,.BMap_stdMpType2 .BMap_stdMpZoom,.BMap_stdMpType3 .BMap_stdMpPan,.BMap_stdMpType4 .BMap_stdMpPan{display:none;}.BMap_stdMpType3 .BMap_stdMpZoom{top:0;}.BMap_stdMpType4 .BMap_stdMpZoom{top:0;}.BMap_cpyCtrl a{font-size:11px;color:#7979CC;}.BMap_scaleCtrl{height:23px;overflow:hidden;}.BMap_scaleCtrl div.BMap_scaleTxt{font-size:11px;font-family:Arial,sans-serif;}.BMap_scaleCtrl div{position:absolute;overflow:hidden;}.BMap_scaleHBar img,.BMap_scaleLBar img,.BMap_scaleRBar img{position:absolute;width:37px;height:442px;left:0;}.BMap_scaleHBar{width:100%;height:5px;font-size:0;bottom:0;}.BMap_scaleHBar img{top:-437px;width:100%;}.BMap_scaleLBar,.BMap_scaleRBar{width:3px;height:9px;bottom:0;font-size:0;z-index:1;}.BMap_scaleLBar img{top:-427px;left:0;}.BMap_scaleRBar img{top:-427px;left:-5px;}.BMap_scaleLBar{left:0;}.BMap_scaleRBar{right:0;}.BMap_scaleTxt{text-align:center;width:100%;cursor:default;line-height:18px;}.BMap_omCtrl{background-color:#fff;overflow:hidden;}.BMap_omOutFrame{position:absolute;width:100%;height:100%;left:0;top:0;}.BMap_omInnFrame{position:absolute;border:1px solid #999;background-color:#ccc;overflow:hidden;}.BMap_omMapContainer{position:absolute;overflow:hidden;width:100%;height:100%;left:0;top:0;}.BMap_omViewMv{border-width:1px;border-style:solid;border-left-color:#84b0df;border-top-color:#adcff4;border-right-color:#274b8b;border-bottom-color:#274b8b;position:absolute;z-index:600;}.BMap_omViewInnFrame{border:1px solid #3e6bb8;}.BMap_omViewMask{width:1000px;height:1000px;position:absolute;left:0;top:0;background-color:#68c;opacity:.2;filter:progid:DXImageTransform.Microsoft.Alpha(opacity=20);}.BMap_omBtn{height:13px;width:13px;position:absolute;cursor:pointer;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls1d3.gif) no-repeat;z-index:1210;}.anchorBR .BMap_omOutFrame{border-top:1px solid #999;border-left:1px solid #999;}.quad4 .BMap_omBtn{background-position:-26px -27px;}.quad4 .BMap_omBtn.hover{background-position:0 -27px;}.quad4 .BMap_omBtn.BMap_omBtnClosed{background-position:-39px -27px;}.quad4 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-13px -27px;}.anchorTR .BMap_omOutFrame{border-bottom:1px solid #999;border-left:1px solid #999;}.quad1 .BMap_omBtn{background-position:-39px -41px;}.quad1 .BMap_omBtn.hover{background-position:-13px -41px;}.quad1 .BMap_omBtn.BMap_omBtnClosed{background-position:-26px -41px;}.quad1 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:0 -41px;}.anchorBL .BMap_omOutFrame{border-top:1px solid #999;border-right:1px solid #999;}.quad3 .BMap_omBtn{background-position:-27px -40px;}.quad3 .BMap_omBtn.hover{background-position:-1px -40px;}.quad3 .BMap_omBtn.BMap_omBtnClosed{background-position:-40px -40px;}.quad3 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-14px -40px;}.anchorTL .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;}.quad2 .BMap_omBtn{background-position:-40px -28px;}.quad2 .BMap_omBtn.hover{background-position:-14px -28px;}.quad2 .BMap_omBtn.BMap_omBtnClosed{background-position:-27px -28px;}.quad2 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-1px -28px;}.anchorR .BMap_omOutFrame{border-bottom:1px solid #999;border-left:1px solid #999;border-top:1px solid #999;}.anchorL .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;border-top:1px solid #999;}.anchorB .BMap_omOutFrame{border-top:1px solid #999;border-left:1px solid #999;border-right:1px solid #999;}.anchorT .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;border-left:1px solid #999;}.anchorNon .BMap_omOutFrame,.withOffset .BMap_omOutFrame{border:1px solid #999;}.BMap_zoomMask0,.BMap_zoomMask1{position:absolute;left:0;top:0;width:100%;height:100%;background:transparent url(http://api0.map.bdimg.com/images/blank.gif);z-index:1000;}.BMap_contextMenu{position:absolute;border-top:1px solid #adbfe4;border-left:1px solid #adbfe4;border-right:1px solid #8ba4d8;border-bottom:1px solid #8ba4d8;padding:0;margin:0;width:auto;visibility:hidden;background:#fff;z-index:10000000;}.BMap_cmShadow{position:absolute;background:#000;opacity:.3;filter:alpha(opacity=30);visibility:hidden;z-index:9000000;}div.BMap_cmDivider{border-bottom:1px solid #adbfe4;font-size:0;padding:1px;margin:0 6px;}div.BMap_cmFstItem{margin-top:2px;}div.BMap_cmLstItem{margin-bottom:2px;}.BMap_shadow img{border:0 none;margin:0;padding:0;height:370px;width:1144px;}.BMap_pop .BMap_top{border-top:1px solid #ababab;background-color:#fff;}.BMap_pop .BMap_center{border-left:1px solid #ababab;border-right:1px solid #ababab;background-color:#fff;}.BMap_pop .BMap_bottom{border-bottom:1px solid #ababab;background-color:#fff;}.BMap_shadow,.BMap_shadow img,.BMap_shadow div{-moz-user-select:none;-webkit-user-select:none;}.BMap_checkbox{background:url(http://api0.map.bdimg.com/images/mapctrls1d3.gif);vertical-align:middle;display:inline-block;width:11px;height:11px;margin-right:4px;background-position:-14px 90px;}.BMap_checkbox.checked{background-position:-2px 90px;}.BMap_pop .BMap_top img,.BMap_pop .BMap_center img,.BMap_pop .BMap_bottom img{display:none;}@media print{.BMap_noprint{display:none;}.BMap_noscreen{display:block;}.BMap_mask{background:none;}.BMap_pop .BMap_top img,.BMap_pop .BMap_center img,.BMap_pop .BMap_bottom img{display:block;}}.BMap_vectex{cursor:pointer;width:11px;height:11px;position:absolute;background-repeat:no-repeat;background-position:0 0;}.BMap_vectex_nodeT{background-image:url(http://api0.map.bdimg.com/images/nodeT.gif);}.BMap_vectex_node{background-image:url(http://api0.map.bdimg.com/images/node.gif);}.iw{width:100%;-webkit-box-sizing:border-box;border:.3em solid transparent;-webkit-background-clip:padding;}.iw_rt{position:relative;height:46px;width:195px;-webkit-box-sizing:border-box;display:-webkit-box;-webkit-box-align:center;margin:2px 5px 0 2px;background-color:rgba(0,0,0,0.8);-webkit-box-shadow:2px 2px 7px rgba(0,0,0,0.3);-webkit-border-radius:2px;color:#fff;}.iw_rt:after{content:"";position:absolute;left:50%;bottom:-8px;width:0;height:0;border-left:5px solid transparent;border-top:8px solid rgba(0,0,0,0.8);border-right:5px solid transparent;margin:0 0 0 -6px;}.iw_s{text-align:center;vertical-align:middle;height:100%;-webkit-box-sizing:border-box;}.iw_rt .iw_s1{color:#cbcbcb;}.iw_rt b{color:#fff;font-weight:bold;}.iw_rt_gr{margin-left:-4px;}.iw_busline{margin:32px 0 0 -3px;}.iw_busline .iw_cc{text-align:center;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;padding:0 6px;}.iw_r{-webkit-box-ordinal-group:3;}.iw_r,.iw_l{height:100%;font-size:4.5em;text-align:center;color:#747474;border:none;-webkit-box-sizing:border-box;-webkit-border-radius:0;line-height:.7em;border:1px solid rgba(255,255,255,0.2);width:41px;}.iw_r{border-style:none none none solid;}.iw_l{border-style:none solid none none;}.iw_search,.iw_l{background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAlCAYAAAAuqZsAAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ bWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6 eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNl SUQ9InhtcC5paWQ6QjA3NjMyREJDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiIHhtcE1NOkRvY3Vt ZW50SUQ9InhtcC5kaWQ6QjA3NjMyRENDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiPiA8eG1wTU06 RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCMDc2MzJEOUM3NDYxMUUxOUFB QzlDOUJENkY4NkJCRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCMDc2MzJEQUM3NDYxMUUx OUFBQzlDOUJENkY4NkJCRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1w bWV0YT4gPD94cGFja2V0IGVuZD0iciI/PllB9T8AAAKuSURBVHjaxFjRcdpAEAX+mVEqiFxB5AoQ HZAKElcArsBWBSgVQCoAVwCuwEoFlivwGQpI7jKrzGXn7ep0EsPO7BjLp/O73bdv9xifTqdRpCXW c+sz65n1lNy3mvzZemX9aN34C6bTKdx8HAHMgVlaX0QeaGv9J4EcBJgD9EA/hzAH7N4Cq/oAW1tf KX+vKEXP7PlMSLFvhQX32BWY49GBOIRO7FKy57wBlnoUQHu5yJX+g4mymdvgFWzkAM3JtwGgmiJw a2/pvQoEYBQCLKNI8RfuaeNjT245gAUdqgHdmkqUPiOctLdJVYkithkAVO/K5cC+M30KAZVSxboo /ybnn1eIR5r5qUyI7P4GX6nqJHskbQsxQ7wqu6aSn2qrgHLrXjqAat5ZC0WlRuzVE0J3uhtBCjRt a3qjX92JIMiOIqYtYgumzpo+7RRtu/E0zvknokMF5GgdQv4Ze/5DWL8CFVe2aNuedGsLCi1vS+WL F4WKNkL2Dnh414FnO1b1R5vKuRaxjKUF2YKBqjuCGtF6nyL5+XxOJWCcL2/CpjzdRYRuGpDShQQs ARUj9U/OnRh7Yr9/CW1JXU4fYxXoHIMCu+iB+gBLIt/LgShDYCYktGCDfCBgvyRgVQgZwTy/jIzy EnQNMZV1QCT4bJ+3XFCkS81/WijdkiYAdSak04BWtabWEmIbsNZYgU00YE+gjyErQeo31GpShVMH Yc+/dwsEzh97/D6ojT2ZMlM1XwN8WP9Ma7NAbZvbtBoEjE+jBT2TusCu5SIbI7z/wLWN1rdKi0o6 cqwTuAmYyTm5NQW/82atWvlnBbo7apxD98qDJxl7mkC76JQ2Qm0CI1xKF95Gb4oLXHJDwJlxjy/u LgruGtNFM8lqnNtfK2JqN3CVeW1gzWj9jThd0xd59R8BBgAAiefGO1Bt1gAAAABJRU5ErkJggg==") no-repeat 50% 50%;-webkit-background-size:19px 19px;}.iw_line_s,.iw_r{background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAmCAYAAABDClKtAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ bWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6 eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNl SUQ9InhtcC5paWQ6QjA3NjMyREZDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiIHhtcE1NOkRvY3Vt ZW50SUQ9InhtcC5kaWQ6QjA3NjMyRTBDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiPiA8eG1wTU06 RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCMDc2MzJEREM3NDYxMUUxOUFB QzlDOUJENkY4NkJCRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCMDc2MzJERUM3NDYxMUUx OUFBQzlDOUJENkY4NkJCRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1w bWV0YT4gPD94cGFja2V0IGVuZD0iciI/PqheQ+MAAAEtSURBVHja7JftDYIwEIbB8JeEUXACZQPd oGygE+gGxAnQEZzAOgEdwREIDKBXUgjBIqW5Npj0kvcHpG0erveFX1WVZ8l2oBhEhRoLw/BroW8J KgeR3vMVlI5BrSwAHQZAnngmYxtMe4oIL41ZAp6iNqF4/BQTa0oBxmxAcaAHKFJY+wKtAaw0CRUJ oHjGHiY8VpqCKmYCdRkJUKmJ7Ms1gZqkqOs6w/bUGXRCOGePCcXjaItwDsW8PoZ0zhM70IeeyiZi jH/Isf+CF9MAOdCppDj+LJ6yim6j9802B6VqQa818BFjY6AHakHp9Crj15ctCaiFIi7Q/wCKLRHq vjSoVNKWunH4rTBDv5Cv7NKeKfvvU2nINzHAuexzUA7KQTkoB6UxDicKvc+qfQQYABaiUBxugCsr AAAAAElFTkSuQmCC") no-repeat 50% 50%;-webkit-background-size:19px 19px;}.iw_line{height:64px;width:228px;padding:0 11px;line-height:20px;}.iw_bustrans .iw_cc{text-align:center;}.iw_c{color:#FFFFFF;text-decoration:none;overflow:hidden;display:-webkit-box;-webkit-box-align:center;-webkit-box-flex:1;}.iw_cc{-webkit-box-sizing:border-box;width:100%;border:none;}.gray_background{filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity:0.5;opacity: 0.5} .light_gray_background {filter:alpha(opacity=70);-moz-opacity:0.7;-khtml-opacity:0.7;opacity: 0.7} .panoInfoBox {cursor: pointer; } .panoInfoBox {position: relative; width: 323px; height: 101px; margin-bottom: 4px; cursor: pointer; } .panoInfoBox .panoInfoBoxTitleBg {width: 323px; height: 19px; position: absolute; left: 0; bottom: 0; z-index: 2; background-color: #000; opacity: .7; } .panoInfoBox .panoInfoBoxTitleContent {font-size: 12px; color: #fff; position: absolute; bottom: 2px; left: 5px; z-index: 3; text-decoration: none; } .RouteAddressOuterBkg{position:relative; padding: 32px 4px 4px 3px; background-color:#ffdd99; } .RouteAddressInnerBkg{padding: 3px 5px 8px 8px; background-color:#ffffff; } #RouteAddress_DIV1{margin-top: 5px; } .RouteAddressTip{position:absolute; width:100%; top:0px; text-align:center; height:30px; line-height:30px; color:#994c00; } .route_tip_con {position:absolute;top:145px;} .route_tip_con .route_tip{position:absolute;width:233px;height:29px;color:#803300;text-align:center;line-height:29px;border:#cc967a solid 1px;background:#fff2b2;z-index:100000;} .route_tip_con .route_tip span{position:absolute;top:0;right:0;_right:-1px;width:14px;height:13px;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -121px;cursor:pointer;} .route_tip_con .route_tip_shadow{width:233px;height:29px;  position:absolute;left:1px;top:1px;background:#505050;border:1px solid #505050;opacity:0.2;filter:alpha(opacity=20)} .sel_body_body_page{margin:5px 0} .sel_n{margin-top:5px;overflow:hidden;} .sel_n .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_n .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px;} .sel_n .sel_body_title{float:left;width:100%;height:31px;} .sel_n .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -79px -387px;} .sel_n .sel_body_name{height: 10px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_n .sel_body_button{float:left;width:55px;margin-left:-55px;padding-top:8px;} .sel_n .sel_body_button a{} .sel_n .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_n .sel_body_body{padding:3px 0 0 0} .sel_n1{margin-top:5px;width:329px;overflow:hidden;} .sel_n1 .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_n1 .sel_body_top{height:31px;width:100%;background:url(http://api0.map.bdimg.com/images/sel_body_n_top.gif) repeat-x;} .sel_n1 .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px} .sel_n1 .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_n1 .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -79px -387px;} .sel_n1 .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_n1 .sel_body_button{float:left;width:20px;height:31px;margin-left:-23px;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -253px -382px;overflow:hidden;zoom:1;cursor:pointer;} .sel_n1 .sel_body_button a{display:none;} .sel_n1 .sel_body_body{display:none} .sel_n1 .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_y{margin-top:5px;overflow:hidden;} .sel_y .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -439px;height:4px;zoom:1;font-size:0px;} .sel_y .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 0} .sel_y .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_y .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -167px -384px;} .sel_y .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#5B7BCB;} .sel_y .sel_body_button{float:left;width:20px;height:31px;margin-left:-20px;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -269px -297px;cursor:pointer;} .sel_y .sel_body_button a{display:none;} .sel_y .sel_body_body{display:none;height:0px} .sel_y .sel_body_body_div{} .sel_y .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -436px;height:4px;font-size:0px;} .sel_y .sel_body_body_page{display:none;height:0px;} .sel_x{margin-top:5px;width:329px;overflow:hidden;} .sel_x .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_x .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px;} .sel_x .sel_body_title{float:left;width:100%;height:31px;} .sel_x .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -122px -384px;} .sel_x .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_x .sel_body_button{float:left;width:55px;margin-left:-55px;padding-top:8px;} .sel_x .sel_body_button a{} .sel_x .sel_body_body{} .sel_x .sel_body_body_div{padding:5px 5px 0 5px;} .sel_x .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_x1{margin-top:5px;width:329px;overflow:hidden;} .sel_x1 .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_x1 .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px} .sel_x1 .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_x1 .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -122px -384px;} .sel_x1 .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_x1 .sel_body_button{float:left;width:55px;height:31px;margin-left:-55px;} .sel_x1 .sel_body_button a{display:none;} .sel_x1 .sel_body_body{display:none;height:0px;} .sel_x1 .sel_body_body_div{padding:5px 5px 0 5px;} .sel_x1 .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_body_citylist{height:100px;padding: 0 0 0 5px} .sel_body_resitem{table-layout:fixed;overflow-x:hidden;overflow-y:hidden;} .sel_body_resitem table {margin-right:5px;} .sel_body_resitem tr{cursor:pointer;} .sel_body_resitem th{padding-top:5px;padding-left:5px;text-align:left;vertical-align:top;width:22px;} .sel_body_resitem th div.iconbg{background:url(http://api0.map.bdimg.com/images/markers_new_ie6.png) no-repeat scroll 0 0;height:29px;width:24px;} .sel_body_resitem th div.icon{cursor:pointer} .sel_body_resitem th div#no_0_1, .sel_body_resitem th div#no_1_1{background-position:0 -64px} .sel_body_resitem th div#no_0_2, .sel_body_resitem th div#no_1_2{background-position:-24px -64px} .sel_body_resitem th div#no_0_3, .sel_body_resitem th div#no_1_3{background-position:-48px -64px} .sel_body_resitem th div#no_0_4, .sel_body_resitem th div#no_1_4{background-position:-72px -64px} .sel_body_resitem th div#no_0_5, .sel_body_resitem th div#no_1_5{background-position:-96px -64px} .sel_body_resitem th div#no_0_6, .sel_body_resitem th div#no_1_6{background-position:-120px -64px} .sel_body_resitem th div#no_0_7, .sel_body_resitem th div#no_1_7{background-position:-144px -64px} .sel_body_resitem th div#no_0_8, .sel_body_resitem th div#no_1_8{background-position:-168px -64px} .sel_body_resitem th div#no_0_9, .sel_body_resitem th div#no_1_9{background-position:-192px -64px} .sel_body_resitem th div#no_0_10, .sel_body_resitem th div#no_1_10{background-position:-216px -64px} .sel_body_resitem td{line-height:160%;padding:3px 0 3px 3px;vertical-align:top;} .sel_body_resitem div.ra_td_title{float:left;margin-right:40px;} .sel_body_resitem div.ra_td_button{float:right; width:40px;} .sel_body_resitem div.ra_td_button input{height:18px;font-size:12px;width:40px;} .sel_body_resitem div.clear{clear:both;height:0px;width:100%;} .sel_body_resitem td .selBtn {width:70px;height:29px;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat -21px -81px;text-align:center;line-height:29px;visibility:hidden;color:#b35900;display:inline-block;*display:inline;*zoom:1;} .sel_body_resitem td .list_street_view_poi {display:inline-block;float:none;margin-right:6px;position:static;*vertical-align:-3px;_vertical-align:-5px;*display:inline;*zoom:1;} .selInfoWndBtn {width:70px;height:29px;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat -21px -81px;text-align:center;line-height:29px;margin: 0 auto;cursor:pointer;color:#b35900} .sel_body_body td a{text-decoration: none; cursor: auto; } .sel_body_body td a:hover,.sel_body_body td a:focus{text-decoration:underline; }.panoInfoBox{cursor:pointer}.panoInfoBox{position:relative;width:323px;height:101px;margin-bottom:4px;cursor:pointer}.panoInfoBox .panoInfoBoxTitleBg{width:323px;height:19px;position:absolute;left:0;bottom:0;z-index:2;background-color:#000;opacity:.7}.panoInfoBox .panoInfoBoxTitleContent{font-size:12px;color:#fff;position:absolute;bottom:2px;left:5px;z-index:3;text-decoration:none}.pano_switch_left,.pano_switch_right{position:absolute;width:28px;height:38px;cursor:pointer;background-color:#252525;background-color:rgba(37,37,37,.9)}.pano_switch_left{background:url(http://api0.map.bdimg.com/images/panorama/zuojiantou.png) no-repeat;-webkit-background-size:100% 100%;background-size:100% 100%}.pano_switch_right{background:url(http://api0.map.bdimg.com/images/panorama/youjiantou.png) no-repeat;-webkit-background-size:100% 100%;background-size:100% 100%}.pano_switch_left:hover{background:url(http://api0.map.bdimg.com/images/panorama/zuojiantou_hover.png) no-repeat;-webkit-background-size:100% 100%;background-size:100% 100%}.pano_switch_right:hover{background:url(http://api0.map.bdimg.com/images/panorama/youjiantou_hover.png) no-repeat;-webkit-background-size:100% 100%;background-size:100% 100%}.pano_switch_left.pano_switch_disable,.pano_switch_right.pano_switch_disable{background:0 0;border:none}.pano_poi_1,.pano_poi_2,.pano_poi_4{display:inline-block;width:16px;height:16px;vertical-align:middle;background:url(http://webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/guide_icons_4b871b2.png) no-repeat;background-position:0 0}.pano_photo_arrow_l,.pano_photo_arrow_r{position:absolute;top:0;width:20px;height:100%;background:#f3eeee}.pano_photo_arrow_l{left:0}.pano_photo_arrow_r{right:0}.pano_arrow_l,.pano_arrow_r{display:inline-block;width:18px;height:18px;background:url(http://webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/pano-icons_223a291.png) no-repeat}.pano_catlogLi{cursor:pointer;position:relative;line-height:10px;font-size:10px;text-align:center;color:#abb0b2;border:1px solid #53565c;padding:3px 0;margin-top:3px;margin-left:2px;width:90%}.pano_catlogLi:hover{color:#3DAAFC;border:1px solid #3DAAFC}.pano_catlogLiActive{color:#3DAAFC;border:1px solid #3DAAFC}.pano_arrow_l{background-position:0 -36px}.pano_arrow_r{background-position:-54px -36px}.pano_photo_arrow_l:hover .pano_arrow_l{background-position:-18px -36px}.pano_photo_arrow_r:hover .pano_arrow_r{background-position:-72px -36px}.pano_photo_arrow_l.pano_arrow_disable .pano_arrow_l{background-position:-36px -36px}.pano_photo_arrow_r.pano_arrow_disable .pano_arrow_r{background-position:-90px -36px}.pano_photo_item{position:relative;float:left;line-height:0;padding-left:8px}.pano_photo_decs{position:absolute;bottom:1px;left:0;padding:2px 0;text-indent:5px;margin-left:8px;display:inline-block;color:#fff;background:#000;opacity:.5;filter:alpha(opacity=50)9;text-overflow:ellipsis;overflow:hidden;white-space:nowrap}.pano_photo_item img{display:inline-block;border:solid 1px #252525}.pano_photo_item:hover img{border-color:#005efc}.pano_photo_item_seleted{position:absolute;top:0;left:-100000px;border:3px solid #097df3}.pano_close{position:absolute;right:10px;top:10px;width:40px;cursor:pointer;height:40px;line-height:40px;border-radius:3px;background-color:rgba(37,37,37,.9);background-image:url(http://api0.map.bdimg.com/images/panorama/close.png);background-repeat:no-repeat;background-position:center center;background-size:90%}.pano_close:hover{background-image:url(http://api0.map.bdimg.com/images/panorama/close_hover.png)}.pano_pc_indoor_exit{position:absolute;right:60px;top:10px;width:89px;cursor:pointer;height:40px;line-height:40px;color:#ebedf0;border-radius:3px;background-color:#252525;background-color:rgba(37,37,37,.9);background-image:url(http://api0.map.bdimg.com/images/panorama/indoor_exit.png);background-repeat:no-repeat;background-position:15px 12px}.pano_pc_indoor_exit:hover{background-image:url(http://api0.map.bdimg.com/images/panorama/indoor_exit_hover.png);color:#2495ff}.pano_m_indoor_exit{font-size:16px;position:absolute;right:30px;top:10px;width:89px;cursor:pointer;height:40px;line-height:40px;color:#ebedf0;border-radius:3px;background-color:#252525;background-color:rgba(37,37,37,.9);background-image:url(http://api0.map.bdimg.com/images/panorama/indoor_exit.png);background-repeat:no-repeat;background-position:15px 12px}.navtrans-table tr{color:#666}.navtrans-table tr:hover{color:#333}.navtrans-navlist-icon{float:left;width:18px;height:16px;background:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/nav-icon_b5c3223.png) no-repeat 0px 0px;_background:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/nav-icon_ie6_134841b.png) no-repeat 0px 0px;margin-top:2px;margin-right:5px}.navtrans-navlist-icon.s-1{background-position:0px 0px}.navtrans-navlist-icon.s-2{background-position:-18px 0px}.navtrans-navlist-icon.s-3{background-position:-36px 0px}.navtrans-navlist-icon.s-4{background-position:-54px 0px}.navtrans-navlist-icon.s-5{background-position:-72px 0px}.navtrans-navlist-icon.s-6{background-position:-90px 0px}.navtrans-navlist-icon.s-7{background-position:0px -16px}.navtrans-navlist-icon.s-8{background-position:-18px -16px}.navtrans-navlist-icon.s-9{background-position:-36px -16px}.navtrans-navlist-icon.s-10{background-position:-54px -16px}.navtrans-navlist-icon.s-11{background-position:-72px -16px}.navtrans-navlist-icon.s-12{background-position:-90px -16px}.navtrans-navlist-icon.s-13{background-position:0px -32px}.navtrans-navlist-icon.s-14{background-position:-18px -32px}.navtrans-navlist-icon.s-18{background-position:-36px -32px}.navtrans-navlist-icon.s-19{background-position:-54px -32px}.navtrans-navlist-icon.s-20{background-position:-72px -32px}.navtrans-navlist-icon.s-21{background-position:-90px -32px}.navtrans-navlist-icon.nav-st,.navtrans-navlist-icon.nav-through{background-position:-16px -70px}.navtrans-navlist-icon.nav-ed{background-position:0px -70px}.navtrans-view{border-top:1px solid #e4e6e7;border-left:1px solid #e4e6e7;border-right:1px solid #e4e6e7}.navtrans-view:hover{cursor:pointer}.navtrans-view .navtrans-arrow{position:absolute;top:8px;right:5px;width:7px;height:4px;background-image:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/nav-icon_b5c3223.png);background-repeat:no-repeat;background-position:-40px -70px;margin-top:3px;margin-right:3px;_background-image:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/nav-icon_ie6_134841b.png)}.navtrans-view.expand:hover .navtrans-arrow{background-position:-61px -70px}.navtrans-view.expand .navtrans-arrow{background-position:-54px -70px}.navtrans-view:hover .navtrans-arrow{background-position:-47px -70px}.navtrans-navlist-content{overflow:hidden}.navtrans-res{border-bottom:1px solid #E4E6E7;border-left:1px solid #E4E6E7;border-right:1px solid #E4E6E7}.navtrans-bus-icon{display:inline-block;float:left;background-image:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/ui3/mo_banner_e1aa2e6.png);background-repeat:no-repeat}.navtrans-bus-icon.bus{width:13px;height:16px;background-position:-1px -192px;position:relative;top:4px}.navtrans-bus-icon.walk{width:16px;height:18px;background-position:-63px -189px;position:relative;top:2px;left:-2px}.navtrans-bus-desc{line-height:24px;margin-left:20px}.navtrans-busstation{color:#36c;font-weight:600}.tranroute-plan-list.expand .trans-title{border-bottom:1px solid #e4e6e7;background-color:#ebf1fb}.trans-plan-content tr td:hover .bus{background-position:-15px -192px}.trans-plan-content tr td:hover .walk{background-position:-82px -189px}.suggest-plan{position:absolute;background-color:#0C88E8;padding:0px 15px;line-height:20px;color:#fff;left:0px;top:0px}.suggest-plan-des{text-align:left;padding:29px 0px 0px 25px;font-size:13px;color:#000}.bmap-clearfix{*+height:1%}.bmap-clearfix:after{content:".";display:block;height:0px;clear:both;visibility:hidden}.BMap_CityListCtrl{font-size:12px}.BMap_CityListCtrl a{text-decoration:none!important}.BMap_CityListCtrl a:hover{text-decoration:underline!important}.BMap_CityListCtrl .citylist_popup_main{border:1px solid #cdcdcd;z-index:2;position:relative;width:100%;height:100%;background:#fafafa;overflow:hidden;box-shadow:1px 1px 1px rgba(0,0,0,.1)}.ui_city_change_top .ui_city_change_inner,.ui_city_change_bottom .ui_city_change_inner{display:inline-block;height:24px;line-height:24px;border:1px solid #c4c7cc;background-color:#fff;padding:0 10px 0 10px;color:#000}.ui_city_change_top .ui_city_change_inner i,.ui_city_change_bottom .ui_city_change_inner i{width:8px;height:6px;display:inline-block;position:relative;top:9px;left:5px;-webkit-transition:all ease-in-out .15s;transition:all ease-in-out .15s;display:none9}.ui_city_change_click .ui_city_change_inner i,.ui_city_change_click_close .ui_city_change_inner i{-webkit-transform:rotate(180deg);-moz-transform:rotate(180deg);-o-transform:rotate(180deg);transform:rotate(180deg)}.ui_city_change_top .ui_city_change_inner:hover em{border-top-color:#0C88E8}.ui_city_change_top .ui_city_change_inner em{width:0;height:0;border-color:rgba(255,255,255,0);border-top-color:#D0D4DA;border-style:solid;border-width:4px}.ui_city_change_top .ui_city_change_inner:hover,.ui_city_change_bottom .ui_city_change_inner:hover{text-decoration:none!important;color:#3d6dcc}.ui_city_change_bottom .ui_city_change_inner:hover em{border-bottom-color:#0C88E8}.ui_city_change_bottom .ui_city_change_inner em{width:0;height:0;border-color:rgba(255,255,255,0);border-bottom-color:#D0D4DA;border-style:solid;border-width:4px;position:relative;top:-18px}.citylist_popup_main .citylist_ctr_title{background:#f9f9f9;border-bottom:1px solid #dadada;height:25px;line-height:25px;font-size:12px;color:#4c4c4c;padding-left:7px}.citylist_popup_main .city_content_top{position:relative;height:30px;padding:15px 10px 0px 10px;border-bottom:1px solid #CCC;margin:0px 10px}.citylist_popup_main .city_content_top .cur_city_info{display:inline-block;margin:0;padding:0;}#city_ctrl_form{position:absolute;right:12px;top:10px}#selCityWd{border:1px solid #ccc;height:20px;width:121px;line-height:20px;text-indent:4px;outline:none}#selCitySubmit:hover{background-position:-355px -98px}#selCitySubmit{float:right;background:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/index_a2f1ac4.png) no-repeat scroll -302px -98px;height:24px;line-height:24px;width:48px;cursor:pointer;margin-left:5px;text-align:center}#sel_city_letter_list{padding-top:10px}#sel_city_letter_list a{white-space:nowrap;margin-right:11px;line-height:18px;font-size:13px;font-family:Arial,Helvetica,SimSun,sans-serif}.city_content_medium{padding:10px 10px 10px 10px;border-bottom:1px solid #CCC;margin:0px 10px}.city_content_bottom{padding:10px 10px 10px 8px;margin:9px 5px 5px 5px;height:218px;overflow-y:auto}#city_detail_table tr td{vertical-align:top}.sel_city_hotcity a{color:#3d6dcc}.sel_city_letter{padding:0 14px 0 3px}.sel_city_letter div{font-size:24px;line-height:24px;font-weight:700;color:#ccc;padding:0;margin:0;font-family:Arial,Helvetica,SimSun,sans-serif}.sel_city_sf{padding-right:8px;font-weight:700}.sel_city_sf a{white-space:nowrap;line-height:18px;color:#3d6dcc}.city_names_wrap{margin-bottom:9px}.sel_city_name{color:#3d6dcc;white-space:nowrap;margin-right:9px;line-height:18px;float:left}#popup_close{outline:none;position:absolute;z-index:50;top:7px;right:6px;width:12px;height:12px;background:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/popup_close_15d2283.gif) no-repeat;border:0;cursor:pointer}</style></head>

<body">
    <div class="content">

    <div class="dt_nav"><span class="result" id="resultNum"></span>
        <ul class="nav">
            <li>
                <div class="l"><b id="curCity">北京市</b><span>[<a id="curCityText" onclick="showPop()">更换城市</a>]</span></div><span class="r"></span></li>
            <li>
                <div class="l"><b>当前层级：<span id="ZoomNum">12</span>级</b></div><span class="r"></span></li>
        </ul>
    </div>
    <div id="wrapper">
        <div id="MapHolder" style="overflow: hidden; height: 650px; position: relative; z-index: 0; background-color: rgb(243, 241, 236); color: rgb(0, 0, 0); text-align: left;"><div style="overflow: visible; position: absolute; z-index: 0; left: 0px; top: 0px; cursor: default;"><div class="BMap_mask" style="position: absolute; left: 0px; top: 0px; z-index: 9; overflow: hidden; -moz-user-select: none; width: 662px; height: 519px;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 800;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 700;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 600;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 500;"><label class="BMapLabel" unselectable="on" style="position: absolute; -moz-user-select: none; display: none; cursor: inherit; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 1px solid rgb(153, 153, 153); padding: 1px; white-space: nowrap; font: 12px arial, sans-serif; z-index: -8002674; left: 530px; top: 91px;">116.571569,40.01337</label></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 400;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 300;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 201;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 1;"><div style="position: absolute; overflow: visible; z-index: -100; left: 331px; top: 260px; display: block; transform: translate3d(0px, 0px, 0px);"><img style="-moz-user-select: none; position: absolute; border: medium none; width: 256px; height: 256px; left: -216px; top: -81px; max-width: none; opacity: 1;" src="/static/address/a_003.png"><img style="-moz-user-select: none; position: absolute; border: medium none; width: 256px; height: 256px; left: -216px; top: 175px; max-width: none; opacity: 1;" src="/static/address/a_012.png"><img style="-moz-user-select: none; position: absolute; border: medium none; width: 256px; height: 256px; left: 40px; top: -81px; max-width: none; opacity: 1;" src="/static/address/a_008.png"><img style="-moz-user-select: none; position: absolute; border: medium none; width: 256px; height: 256px; left: -472px; top: 175px; max-width: none; opacity: 1;" src="/static/address/a_007.png"><img style="-moz-user-select: none; position: absolute; border: medium none; width: 256px; height: 256px; left: 296px; top: -81px; max-width: none; opacity: 1;" src="/static/address/a.png"><img style="-moz-user-select: none; position: absolute; border: medium none; width: 256px; height: 256px; left: -472px; top: -81px; max-width: none; opacity: 1;" src="/static/address/a_011.png"><img style="-moz-user-select: none; position: absolute; border: medium none; width: 256px; height: 256px; left: -472px; top: -337px; max-width: none; opacity: 1;" src="/static/address/a_009.png"><img style="-moz-user-select: none; position: absolute; border: medium none; width: 256px; height: 256px; left: 40px; top: 175px; max-width: none; opacity: 1;" src="/static/address/a_005.png"><img style="-moz-user-select: none; position: absolute; border: medium none; width: 256px; height: 256px; left: -216px; top: -337px; max-width: none; opacity: 1;" src="/static/address/a_002.png"><img style="-moz-user-select: none; position: absolute; border: medium none; width: 256px; height: 256px; left: 40px; top: -337px; max-width: none; opacity: 1;" src="/static/address/a_006.png"><img style="-moz-user-select: none; position: absolute; border: medium none; width: 256px; height: 256px; left: 296px; top: 175px; max-width: none; opacity: 1;" src="/static/address/a_010.png"><img style="-moz-user-select: none; position: absolute; border: medium none; width: 256px; height: 256px; left: 296px; top: -337px; max-width: none; opacity: 1;" src="/static/address/a_004.png"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 2; display: none;"><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 0; display: none;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 3;"></div></div><div class="pano_close" style="z-index: 1201; display: none;" title="退出全景"></div><a class="pano_pc_indoor_exit" style="z-index: 1201; display: none;" title="退出室内景"><span style="float:right;margin-right:12px;">出口</span></a><div style="height: 32px; position: absolute; z-index: 30; -moz-user-select: none; -moz-text-size-adjust: none; bottom: 20px; right: auto; top: auto; left: 1px;" class=" anchorBL"><a title="到百度地图查看此区域" target="_blank" href="http://map.baidu.com/?sr=1" style="outline: currentcolor none medium;"><img style="border:none;width:77px;height:32px" src="/static/address/copyright_logo.png"></a></div><div id="zoomer" style="position:absolute;z-index:0;top:0px;left:0px;overflow:hidden;visibility:hidden;cursor:default"><div class="BMap_zoomer" style="top:0;left:0;"></div><div class="BMap_zoomer" style="top:0;right:0;"></div><div class="BMap_zoomer" style="bottom:0;left:0;"></div><div class="BMap_zoomer" style="bottom:0;right:0;"></div></div><div unselectable="on" class=" BMap_stdMpCtrl BMap_stdMpType0 BMap_noprint anchorTL" style="width: 62px; height: 192px; bottom: auto; right: auto; top: 10px; left: 10px; position: absolute; z-index: 1100; -moz-user-select: none; -moz-text-size-adjust: none;"><div class="BMap_stdMpPan"><div class="BMap_button BMap_panN" title="向上平移"></div><div class="BMap_button BMap_panW" title="向左平移"></div><div class="BMap_button BMap_panE" title="向右平移"></div><div class="BMap_button BMap_panS" title="向下平移"></div><div class="BMap_stdMpPanBg BMap_smcbg"></div></div><div class="BMap_stdMpZoom" style="height: 147px; width: 62px;"><div class="BMap_button BMap_stdMpZoomIn" title="放大一级"><div class="BMap_smcbg"></div></div><div class="BMap_button BMap_stdMpZoomOut" title="缩小一级" style="top: 126px;"><div class="BMap_smcbg"></div></div><div class="BMap_stdMpSlider" style="height: 108px;"><div class="BMap_stdMpSliderBgTop" style="height: 108px;"><div class="BMap_smcbg"></div></div><div class="BMap_stdMpSliderBgBot" style="top: 43px; height: 69px;"></div><div class="BMap_stdMpSliderMask" title="放置到此级别"></div><div class="BMap_stdMpSliderBar" title="拖动缩放" style="cursor: -moz-grab; top: 43px;"><div class="BMap_smcbg"></div></div></div><div class="BMap_zlHolder"><div class="BMap_zlSt"><div class="BMap_smcbg"></div></div><div class="BMap_zlCity"><div class="BMap_smcbg"></div></div><div class="BMap_zlProv"><div class="BMap_smcbg"></div></div><div class="BMap_zlCountry"><div class="BMap_smcbg"></div></div></div></div><div class="BMap_stdMpGeolocation" style="position: initial; display: none; margin-top: 43px; margin-left: 10px;"><div class="BMap_geolocationContainer" style="position: initial; width: 24px; height: 24px; overflow: hidden; margin: 0px; box-sizing: border-box;"><div class="BMap_geolocationIconBackground" style="width: 24px; height: 24px; background-image: url(http://api0.map.bdimg.com/images/navigation-control/geolocation-control/pc/bg-20x20.png); background-size: 20px 20px; background-position: 3px 3px; background-repeat: no-repeat;"><div class="BMap_geolocationIcon" style="position: initial; width: 24px; height: 24px; cursor: pointer; background-image: url('http://api0.map.bdimg.com/images/navigation-control/geolocation-control/pc/success-10x10.png'); background-size: 10px 10px; background-repeat: no-repeat; background-position: center;"></div></div></div></div></div><div unselectable="on" class=" BMap_scaleCtrl BMap_noprint anchorBL" style="bottom: 18px; right: auto; top: auto; left: 81px; width: 111px; position: absolute; z-index: 10; -moz-user-select: none; -moz-text-size-adjust: none;"><div class="BMap_scaleTxt" unselectable="on" style="background-color: transparent; color: black;">5&nbsp;公里</div><div class="BMap_scaleBar BMap_scaleHBar" style="background-color: black;"><img style="border:none" src="/static/address/mapctrls.png"></div><div class="BMap_scaleBar BMap_scaleLBar" style="background-color: black;"><img style="border:none" src="/static/address/mapctrls.png"></div><div class="BMap_scaleBar BMap_scaleRBar" style="background-color: black;"><img style="border:none" src="/static/address/mapctrls.png"></div></div><div unselectable="on" class=" BMap_omCtrl BMap_ieundefined BMap_noprint anchorBR quad4" style="width: 13px; height: 13px; bottom: 0px; right: 0px; top: auto; left: auto; position: absolute; z-index: 10; -moz-user-select: none; -moz-text-size-adjust: none;"><div class="BMap_omOutFrame" style="width: 149px; height: 149px;"><div class="BMap_omInnFrame" style="bottom: auto; right: auto; top: 5px; left: 5px; width: 142px; height: 142px;"><div class="BMap_omMapContainer"></div><div class="BMap_omViewMv" style="cursor: -moz-grab;"><div class="BMap_omViewInnFrame"><div></div></div></div></div></div><div class="BMap_omBtn BMap_omBtnClosed" style="bottom: 0px; right: 0px; top: auto; left: auto;"></div></div><div unselectable="on" class=" BMap_cpyCtrl BMap_noprint anchorBL" style="cursor: default; white-space: nowrap; -moz-user-select: none; color: black; background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%; font: 11px/15px arial, sans-serif; bottom: 2px; right: auto; top: auto; left: 5px; position: absolute; z-index: 10; -moz-text-size-adjust: none;"></div><div unselectable="on" class=" BMap_cpyCtrl BMap_noprint anchorBL" style="cursor: default; white-space: nowrap; -moz-user-select: none; color: black; background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%; font: 11px/15px arial, sans-serif; bottom: 2px; right: auto; top: auto; left: 2px; position: absolute; z-index: 10; -moz-text-size-adjust: none;"><span _cid="1" style="display: inline;"><span style="background: rgba(255, 255, 255, 0.701961);padding: 0px 1px;line-height: 16px;display: inline;height: 16px;">©&nbsp;2019 Baidu - GS(2018)5572号 - 甲测资字1100930 - 京ICP证030173号 - Data © 长地万方</span></span></div></div>
        <!--右侧地图Info begin-->
        <div id="MapInfo">
            <div style="width:400px;">
                <form action="/address/add" method="post" style="width: 350px">
                    <div style="color:#666;line-height:25px;">当前坐标点如下：</div>
                    <input type="text" name="pointInput" readonly="readonly" id="pointInput" class="pointInput" style="display:inline-block;background:#EBEBE4;border:#7F9DB9 solid 1px;color:#555;width:160px;height:30px;line-height:30px;font-size:14px;font-weight:700" value="118.790886,32.06268">
                    <span id="copyButton" style="top: -22px; left: 5px;">
                        <input type="hidden" value="复制" id="copyPoint" data-clipboard-target="#pointInput" class="button" style="margin-left:8px;float:right">
                    </span>
                    <span id="copyMessage" style="width:60px;position:absolute;top:5px;right:164px;*right:160px;color:#f00;display:none"></span>
                    <div style="color:#777;margin-top:5px;display:none">(默认显示地图中心点坐标,鼠标左键单击后显示单击点的坐标)</div>
                    <br>
                    <label><input type="text" name="address" placeholder="新地址" style="margin-bottom: 10px"></label>
                    <br>
                    <input class='button' type="submit" value="加入列表" style="height: 40px;width: 50%">
                </form>
            </div>
        </div>
        <!--右侧地图Info end-->
        <!--地图上边右边透明立体边框 begin-->
        <div id="shad">
            <div id="shad_v" style="height: 519px;"></div>
            <div id="shad_h"></div>
        </div>
        <!--地图上边右边透明立体边框 end-->
    </div>
    </div>
    <!--更换城市 begin-->
    <div style="width: 382px; display: none; left: 5px; top: 139px; height: 344px;" class="map_popup" id="map_popup">
        <div class="popup_main">
            <div class="title">城市列表</div>
            <div class="sel_city" style="height: 320px; overflow-y: auto;overflow-x:hidden;margin:0;padding-left:5px">

                <table style="width:345px;margin-bottom:20px;overflow:hidden;" id="selCity">
                    <tbody><tr>
                        <td colspan="2" class="selCityInput"><input id="selCityInput" type="text" value="请输入城市名" onfocus="foucs_(this,'请输入城市名','')" onblur="blur_(this,'请输入城市名','')" class="selCityInputT" callback="goCity(Fe.G('selCityInput'))" style="color:#8C8C8C">
                            <input id="selCityButton" value="确定" type="button" onclick="goCity(Fe.G('selCityInput'))"><span style="color:#f00;display:none" id="selCityMessage">请输入正确的城市名</span></td>
                    </tr>
                    <tr>
                        <td width="57">直辖市：</td>
                        <td width="287">
                            <nobr><a onclick="goCity(this)" name="北京市">北京</a></nobr>
                            <nobr><a onclick="goCity(this)" name="上海市">上海</a></nobr>
                            <nobr><a onclick="goCity(this)" name="天津市">天津</a></nobr>
                            <nobr><a onclick="goCity(this)" name="重庆市">重庆</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">安徽</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)" name="合肥市">合肥</a></nobr>
                            <nobr><a onclick="goCity(this)" name="安庆市">安庆</a></nobr>
                            <nobr><a onclick="goCity(this)" name="蚌埠市">蚌埠</a></nobr>
                            <nobr><a onclick="goCity(this)" name="亳州市">亳州</a></nobr>
                            <nobr><a onclick="goCity(this)" name="巢湖市">巢湖</a></nobr>
                            <nobr><a onclick="goCity(this)" name="池州市">池州</a></nobr>
                            <nobr><a onclick="goCity(this)" name="滁州市">滁州</a></nobr>
                            <nobr><a onclick="goCity(this)" name="阜阳市">阜阳</a></nobr>
                            <nobr><a onclick="goCity(this)" name="淮北市">淮北</a></nobr>
                            <nobr><a onclick="goCity(this)" name="淮南市">淮南</a></nobr>
                            <nobr><a onclick="goCity(this)" name="黄山市">黄山</a></nobr>
                            <nobr><a onclick="goCity(this)" name="六安市">六安</a></nobr>
                            <nobr><a onclick="goCity(this)" name="马鞍山市">马鞍山</a></nobr>
                            <nobr><a onclick="goCity(this)" name="宿州市">宿州</a></nobr>
                            <nobr><a onclick="goCity(this)" name="铜陵市">铜陵</a></nobr>
                            <nobr><a onclick="goCity(this)" name="芜湖市">芜湖</a></nobr>
                            <nobr><a onclick="goCity(this)" name="宣城市">宣城</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">福建</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">福州</a></nobr>
                            <nobr><a onclick="goCity(this)">龙岩</a></nobr>
                            <nobr><a onclick="goCity(this)">南平</a></nobr>
                            <nobr><a onclick="goCity(this)">宁德</a></nobr>
                            <nobr><a onclick="goCity(this)">莆田</a></nobr>
                            <nobr><a onclick="goCity(this)">泉州</a></nobr>
                            <nobr><a onclick="goCity(this)">三明</a></nobr>
                            <nobr><a onclick="goCity(this)">厦门</a></nobr>
                            <nobr><a onclick="goCity(this)">漳州</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">甘肃</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">兰州</a></nobr>
                            <nobr><a onclick="goCity(this)">白银</a></nobr>
                            <nobr><a onclick="goCity(this)">定西</a></nobr>
                            <nobr><a name="甘南藏族自治州" onclick="goCity(this)">甘南州</a></nobr>
                            <nobr><a onclick="goCity(this)">嘉峪关</a></nobr>
                            <nobr><a onclick="goCity(this)">金昌</a></nobr>
                            <nobr><a onclick="goCity(this)">酒泉</a></nobr>
                            <nobr><a name="临夏回族自治州" onclick="goCity(this)">临夏州</a></nobr>
                            <nobr><a onclick="goCity(this)">平凉</a></nobr>
                            <nobr><a onclick="goCity(this)">庆阳</a></nobr>
                            <nobr><a onclick="goCity(this)">天水</a></nobr>
                            <nobr><a onclick="goCity(this)">武威</a></nobr>
                            <nobr><a onclick="goCity(this)">张掖</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">广东</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">广州</a></nobr>
                            <nobr><a onclick="goCity(this)">潮州</a></nobr>
                            <nobr><a onclick="goCity(this)">东莞</a></nobr>
                            <nobr><a onclick="goCity(this)">佛山</a></nobr>
                            <nobr><a onclick="goCity(this)">河源</a></nobr>
                            <nobr><a onclick="goCity(this)">惠州</a></nobr>
                            <nobr><a onclick="goCity(this)">江门</a></nobr>
                            <nobr><a onclick="goCity(this)">揭阳</a></nobr>
                            <nobr><a onclick="goCity(this)">茂名</a></nobr>
                            <nobr><a onclick="goCity(this)">梅州</a></nobr>
                            <nobr><a onclick="goCity(this)">清远</a></nobr>
                            <nobr><a onclick="goCity(this)">汕头</a></nobr>
                            <nobr><a onclick="goCity(this)">汕尾</a></nobr>
                            <nobr><a onclick="goCity(this)">韶关</a></nobr>
                            <nobr><a onclick="goCity(this)">深圳</a></nobr>
                            <nobr><a onclick="goCity(this)">阳江</a></nobr>
                            <nobr><a onclick="goCity(this)">云浮</a></nobr>
                            <nobr><a onclick="goCity(this)">湛江</a></nobr>
                            <nobr><a onclick="goCity(this)">肇庆</a></nobr>
                            <nobr><a onclick="goCity(this)">中山</a></nobr>
                            <nobr><a onclick="goCity(this)">珠海</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">广西</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">南宁</a></nobr>
                            <nobr><a onclick="goCity(this)">百色</a></nobr>
                            <nobr><a onclick="goCity(this)">北海</a></nobr>
                            <nobr><a onclick="goCity(this)">崇左</a></nobr>
                            <nobr><a onclick="goCity(this)">防城港</a></nobr>
                            <nobr><a onclick="goCity(this)">桂林</a></nobr>
                            <nobr><a onclick="goCity(this)">贵港</a></nobr>
                            <nobr><a onclick="goCity(this)">河池</a></nobr>
                            <nobr><a onclick="goCity(this)">贺州</a></nobr>
                            <nobr><a onclick="goCity(this)">来宾</a></nobr>
                            <nobr><a onclick="goCity(this)">柳州</a></nobr>
                            <nobr><a onclick="goCity(this)">钦州</a></nobr>
                            <nobr><a onclick="goCity(this)">梧州</a></nobr>
                            <nobr><a onclick="goCity(this)">玉林</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">贵州</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">贵阳</a></nobr>
                            <nobr><a onclick="goCity(this)">安顺</a></nobr>
                            <nobr><a onclick="goCity(this)">毕节地区</a></nobr>
                            <nobr><a onclick="goCity(this)">六盘水</a></nobr>
                            <nobr><a onclick="goCity(this)">铜仁地区</a></nobr>
                            <nobr><a onclick="goCity(this)">遵义</a></nobr>
                            <nobr><a name="黔西南布依族苗族自治州" onclick="goCity(this)">黔西南州</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">海南</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">海口</a></nobr>
                            <nobr><a name="白沙黎族自治县" onclick="goCity(this)">白沙</a></nobr>
                            <nobr><a name="保亭黎族苗族自治县" onclick="goCity(this)">保亭</a></nobr>
                            <nobr><a name="昌江黎族自治县" onclick="goCity(this)">昌江</a></nobr>
                            <nobr><a onclick="goCity(this)">儋州</a></nobr>
                            <nobr><a onclick="goCity(this)" name="澄迈县">澄迈</a></nobr>
                            <nobr><a onclick="goCity(this)">东方</a></nobr>
                            <nobr><a onclick="goCity(this)" name="定安县">定安</a></nobr>
                            <nobr><a onclick="goCity(this)">琼海</a></nobr>
                            <nobr><a name="琼中黎族苗族自治县" onclick="goCity(this)">琼中</a></nobr>
                            <nobr><a name="乐东黎族自治县" onclick="goCity(this)">乐东</a></nobr>
                            <nobr><a onclick="goCity(this)" name="临高县">临高</a></nobr>
                            <nobr><a name="陵水黎族自治县" onclick="goCity(this)">陵水</a></nobr>
                            <nobr><a onclick="goCity(this)">三亚</a></nobr>
                            <nobr><a onclick="goCity(this)" name="屯昌县">屯昌</a></nobr>
                            <nobr><a onclick="goCity(this)">万宁</a></nobr>
                            <nobr><a onclick="goCity(this)">文昌</a></nobr>
                            <nobr><a onclick="goCity(this)">五指山</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">河北</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">石家庄</a></nobr>
                            <nobr><a onclick="goCity(this)">保定</a></nobr>
                            <nobr><a onclick="goCity(this)">沧州</a></nobr>
                            <nobr><a onclick="goCity(this)">承德</a></nobr>
                            <nobr><a onclick="goCity(this)">邯郸</a></nobr>
                            <nobr><a onclick="goCity(this)">衡水</a></nobr>
                            <nobr><a onclick="goCity(this)">廊坊</a></nobr>
                            <nobr><a onclick="goCity(this)">秦皇岛</a></nobr>
                            <nobr><a onclick="goCity(this)">唐山</a></nobr>
                            <nobr><a onclick="goCity(this)">邢台</a></nobr>
                            <nobr><a onclick="goCity(this)">张家口</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">河南</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">郑州</a></nobr>
                            <nobr><a onclick="goCity(this)">安阳</a></nobr>
                            <nobr><a onclick="goCity(this)">鹤壁</a></nobr>
                            <nobr><a onclick="goCity(this)">焦作</a></nobr>
                            <nobr><a onclick="goCity(this)">开封</a></nobr>
                            <nobr><a onclick="goCity(this)">洛阳</a></nobr>
                            <nobr><a onclick="goCity(this)">漯河</a></nobr>
                            <nobr><a onclick="goCity(this)">南阳</a></nobr>
                            <nobr><a onclick="goCity(this)">平顶山</a></nobr>
                            <nobr><a onclick="goCity(this)">濮阳</a></nobr>
                            <nobr><a onclick="goCity(this)">三门峡</a></nobr>
                            <nobr><a onclick="goCity(this)">商丘</a></nobr>
                            <nobr><a onclick="goCity(this)">新乡</a></nobr>
                            <nobr><a onclick="goCity(this)">信阳</a></nobr>
                            <nobr><a onclick="goCity(this)">许昌</a></nobr>
                            <nobr><a onclick="goCity(this)">周口</a></nobr>
                            <nobr><a onclick="goCity(this)">驻马店</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">黑龙江</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">哈尔滨</a></nobr>
                            <nobr><a onclick="goCity(this)">大庆</a></nobr>
                            <nobr><a onclick="goCity(this)" name="大兴安岭地区">大兴安岭地区</a></nobr>
                            <nobr><a onclick="goCity(this)">鹤岗</a></nobr>
                            <nobr><a onclick="goCity(this)">黑河</a></nobr>
                            <nobr><a onclick="goCity(this)">鸡西</a></nobr>
                            <nobr><a onclick="goCity(this)">佳木斯</a></nobr>
                            <nobr><a onclick="goCity(this)">牡丹江</a></nobr>
                            <nobr><a onclick="goCity(this)">七台河</a></nobr>
                            <nobr><a onclick="goCity(this)">齐齐哈尔</a></nobr>
                            <nobr><a onclick="goCity(this)">双鸭山</a></nobr>
                            <nobr><a onclick="goCity(this)">绥化</a></nobr>
                            <nobr><a onclick="goCity(this)">伊春</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">湖北</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">武汉</a></nobr>
                            <nobr><a onclick="goCity(this)">鄂州</a></nobr>
                            <nobr><a name="恩施土家族苗族自治州" onclick="goCity(this)">恩施</a></nobr>
                            <nobr><a onclick="goCity(this)">黄冈</a></nobr>
                            <nobr><a onclick="goCity(this)">黄石</a></nobr>
                            <nobr><a onclick="goCity(this)">荆门</a></nobr>
                            <nobr><a onclick="goCity(this)">荆州</a></nobr>
                            <nobr><a onclick="goCity(this)">潜江</a></nobr>
                            <nobr><a onclick="goCity(this)">神农架林区</a></nobr>
                            <nobr><a onclick="goCity(this)">十堰</a></nobr>
                            <nobr><a onclick="goCity(this)">随州</a></nobr>
                            <nobr><a onclick="goCity(this)">天门</a></nobr>
                            <nobr><a onclick="goCity(this)">仙桃</a></nobr>
                            <nobr><a onclick="goCity(this)">咸宁</a></nobr>
                            <nobr><a onclick="goCity(this)">襄樊</a></nobr>
                            <nobr><a onclick="goCity(this)">孝感</a></nobr>
                            <nobr><a onclick="goCity(this)">宜昌</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">湖南</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">长沙</a></nobr>
                            <nobr><a onclick="goCity(this)">常德</a></nobr>
                            <nobr><a onclick="goCity(this)">郴州</a></nobr>
                            <nobr><a onclick="goCity(this)">衡阳</a></nobr>
                            <nobr><a onclick="goCity(this)">怀化</a></nobr>
                            <nobr><a onclick="goCity(this)">娄底</a></nobr>
                            <nobr><a onclick="goCity(this)">邵阳</a></nobr>
                            <nobr><a onclick="goCity(this)">湘潭</a></nobr>
                            <nobr><a onclick="goCity(this)">益阳</a></nobr>
                            <nobr><a onclick="goCity(this)">永州</a></nobr>
                            <nobr><a onclick="goCity(this)">岳阳</a></nobr>
                            <nobr><a onclick="goCity(this)">张家界</a></nobr>
                            <nobr><a onclick="goCity(this)">株洲</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">江苏</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">南京</a></nobr>
                            <nobr><a onclick="goCity(this)">常州</a></nobr>
                            <nobr><a onclick="goCity(this)">淮安</a></nobr>
                            <nobr><a onclick="goCity(this)">连云港</a></nobr>
                            <nobr><a onclick="goCity(this)">南通</a></nobr>
                            <nobr><a onclick="goCity(this)">苏州</a></nobr>
                            <nobr><a onclick="goCity(this)">宿迁</a></nobr>
                            <nobr><a onclick="goCity(this)">泰州</a></nobr>
                            <nobr><a onclick="goCity(this)">无锡</a></nobr>
                            <nobr><a onclick="goCity(this)">徐州</a></nobr>
                            <nobr><a onclick="goCity(this)">盐城</a></nobr>
                            <nobr><a onclick="goCity(this)">扬州</a></nobr>
                            <nobr><a onclick="goCity(this)">镇江</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">江西</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">南昌</a></nobr>
                            <nobr><a onclick="goCity(this)">抚州</a></nobr>
                            <nobr><a onclick="goCity(this)">赣州</a></nobr>
                            <nobr><a onclick="goCity(this)">吉安</a></nobr>
                            <nobr><a onclick="goCity(this)">景德镇</a></nobr>
                            <nobr><a onclick="goCity(this)">九江</a></nobr>
                            <nobr><a onclick="goCity(this)">萍乡</a></nobr>
                            <nobr><a onclick="goCity(this)">上饶</a></nobr>
                            <nobr><a onclick="goCity(this)">新余</a></nobr>
                            <nobr><a onclick="goCity(this)">宜春</a></nobr>
                            <nobr><a onclick="goCity(this)">鹰潭</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" name="吉林省" onclick="goCity(this)">吉林</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">长春</a></nobr>
                            <nobr><a onclick="goCity(this)">白城</a></nobr>
                            <nobr><a onclick="goCity(this)">白山</a></nobr>
                            <nobr><a onclick="goCity(this)">吉林市</a></nobr>
                            <nobr><a onclick="goCity(this)"></a></nobr><a onclick="goCity(this)">
                            <nobr></nobr></a><nobr><a onclick="goCity(this)">辽源</a></nobr>
                            <nobr><a onclick="goCity(this)">四平</a></nobr>
                            <nobr><a onclick="goCity(this)">松原</a></nobr>
                            <nobr><a onclick="goCity(this)">通化</a></nobr>
                            <nobr><a name="延边朝鲜族自治州" onclick="goCity(this)">延边</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td><a class="black" onclick="goCity(this)">辽宁</a>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">沈阳</a></nobr>
                            <nobr><a onclick="goCity(this)">鞍山</a></nobr>
                            <nobr><a onclick="goCity(this)">本溪</a></nobr>
                            <nobr><a onclick="goCity(this)">朝阳</a></nobr>
                            <nobr><a onclick="goCity(this)">大连</a></nobr>
                            <nobr><a onclick="goCity(this)">丹东</a></nobr>
                            <nobr><a onclick="goCity(this)">抚顺</a></nobr>
                            <nobr><a onclick="goCity(this)">阜新</a></nobr>
                            <nobr><a onclick="goCity(this)">葫芦岛</a></nobr>
                            <nobr><a onclick="goCity(this)">锦州</a></nobr>
                            <nobr><a onclick="goCity(this)">辽阳</a></nobr>
                            <nobr><a onclick="goCity(this)">盘锦</a></nobr>
                            <nobr><a onclick="goCity(this)">铁岭</a></nobr>
                            <nobr><a onclick="goCity(this)">营口</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">内蒙古</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">呼和浩特</a></nobr>
                            <nobr><a onclick="goCity(this)">包头</a></nobr>
                            <nobr><a onclick="goCity(this)">巴彦淖尔</a></nobr>
                            <nobr><a onclick="goCity(this)">赤峰</a></nobr>
                            <nobr><a onclick="goCity(this)">鄂尔多斯</a></nobr>
                            <nobr><a onclick="goCity(this)">呼伦贝尔</a></nobr>
                            <nobr><a onclick="goCity(this)">通辽</a></nobr>
                            <nobr><a onclick="goCity(this)">乌海</a></nobr>
                            <nobr><a onclick="goCity(this)">乌兰察布</a></nobr>
                            <nobr><a onclick="goCity(this)" name="兴安盟">兴安盟</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">宁夏</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">银川</a></nobr>
                            <nobr><a onclick="goCity(this)">固原</a></nobr>
                            <nobr><a onclick="goCity(this)">石嘴山</a></nobr>
                            <nobr><a onclick="goCity(this)">吴忠</a></nobr>
                            <nobr><a onclick="goCity(this)">中卫</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">青海</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">西宁</a></nobr>
                            <nobr><a name="果洛藏族自治州" onclick="goCity(this)">果洛州</a></nobr>
                            <nobr><a onclick="goCity(this)" name="海东地区">海东地区</a></nobr>
                            <nobr><a name="海北藏族自治州" onclick="goCity(this)">海北州</a></nobr>
                            <nobr><a name="海南藏族自治州" onclick="goCity(this)">海南州</a></nobr>
                            <nobr><a name="海西蒙古族藏族自治州" onclick="goCity(this)">海西州</a></nobr>
                            <nobr><a name="黄南藏族自治州" onclick="goCity(this)">黄南州</a></nobr>
                            <nobr><a name="玉树藏族自治州" onclick="goCity(this)">玉树州</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">山东</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">济南</a></nobr>
                            <nobr><a onclick="goCity(this)">滨州</a></nobr>
                            <nobr><a onclick="goCity(this)">东营</a></nobr>
                            <nobr><a onclick="goCity(this)">德州</a></nobr>
                            <nobr><a onclick="goCity(this)">菏泽</a></nobr>
                            <nobr><a onclick="goCity(this)">济宁</a></nobr>
                            <nobr><a onclick="goCity(this)">莱芜</a></nobr>
                            <nobr><a onclick="goCity(this)">聊城</a></nobr>
                            <nobr><a onclick="goCity(this)">临沂</a></nobr>
                            <nobr><a onclick="goCity(this)">青岛</a></nobr>
                            <nobr><a onclick="goCity(this)">日照</a></nobr>
                            <nobr><a onclick="goCity(this)">泰安</a></nobr>
                            <nobr><a onclick="goCity(this)">威海</a></nobr>
                            <nobr><a onclick="goCity(this)">潍坊</a></nobr>
                            <nobr><a onclick="goCity(this)">烟台</a></nobr>
                            <nobr><a onclick="goCity(this)">枣庄</a></nobr>
                            <nobr><a onclick="goCity(this)">淄博</a></nobr>
                            <nobr><a onclick="goCity(this)"></a></nobr><a onclick="goCity(this)">
                        </a></td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">山西</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">太原</a></nobr>
                            <nobr><a onclick="goCity(this)">长治</a></nobr>
                            <nobr><a onclick="goCity(this)">大同</a></nobr>
                            <nobr><a onclick="goCity(this)">晋城</a></nobr>
                            <nobr><a onclick="goCity(this)">晋中</a></nobr>
                            <nobr><a onclick="goCity(this)">临汾</a></nobr>
                            <nobr><a onclick="goCity(this)">吕梁</a></nobr>
                            <nobr><a onclick="goCity(this)">朔州</a></nobr>
                            <nobr><a onclick="goCity(this)">忻州</a></nobr>
                            <nobr><a onclick="goCity(this)">阳泉</a></nobr>
                            <nobr><a onclick="goCity(this)">运城</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">陕西</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">西安</a></nobr>
                            <nobr><a onclick="goCity(this)">安康</a></nobr>
                            <nobr><a onclick="goCity(this)">宝鸡</a></nobr>
                            <nobr><a onclick="goCity(this)">汉中</a></nobr>
                            <nobr><a onclick="goCity(this)">商洛</a></nobr>
                            <nobr><a onclick="goCity(this)">铜川</a></nobr>
                            <nobr><a onclick="goCity(this)">渭南</a></nobr>
                            <nobr><a onclick="goCity(this)">咸阳</a></nobr>
                            <nobr><a onclick="goCity(this)">延安</a></nobr>
                            <nobr><a onclick="goCity(this)">榆林</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">四川</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">成都</a></nobr>
                            <nobr><a name="阿坝藏族羌族自治州" onclick="goCity(this)">阿坝州</a></nobr>
                            <nobr><a onclick="goCity(this)">巴中</a></nobr>
                            <nobr><a onclick="goCity(this)">达州</a></nobr>
                            <nobr><a onclick="goCity(this)">德阳</a></nobr>
                            <nobr><a name="甘孜藏族自治州" onclick="goCity(this)">甘孜州</a></nobr>
                            <nobr><a onclick="goCity(this)">广安</a></nobr>
                            <nobr><a onclick="goCity(this)">广元</a></nobr>
                            <nobr><a onclick="goCity(this)">乐山</a></nobr>
                            <nobr><a name="凉山彝族自治州" onclick="goCity(this)">凉山州</a></nobr>
                            <nobr><a onclick="goCity(this)">泸州</a></nobr>
                            <nobr><a onclick="goCity(this)">南充</a></nobr>
                            <nobr><a onclick="goCity(this)">眉山</a></nobr>
                            <nobr><a onclick="goCity(this)">绵阳</a></nobr>
                            <nobr><a onclick="goCity(this)">内江</a></nobr>
                            <nobr><a onclick="goCity(this)">攀枝花</a></nobr>
                            <nobr><a onclick="goCity(this)">遂宁</a></nobr>
                            <nobr><a onclick="goCity(this)">雅安</a></nobr>
                            <nobr><a onclick="goCity(this)">宜宾</a></nobr>
                            <nobr><a onclick="goCity(this)">资阳</a></nobr>
                            <nobr><a onclick="goCity(this)">自贡</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">西藏</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">拉萨</a></nobr>
                            <nobr><a onclick="goCity(this)" name="阿里地区">阿里地区</a></nobr>
                            <nobr><a onclick="goCity(this)" name="昌都地区">昌都地区</a></nobr>
                            <nobr><a onclick="goCity(this)" name="林芝地区">林芝地区</a></nobr>
                            <nobr><a onclick="goCity(this)" name="那曲地区">那曲地区</a></nobr>
                            <nobr><a onclick="goCity(this)" name="日喀则地区">日喀则地区</a></nobr>
                            <nobr><a onclick="goCity(this)" name="山南地区">山南地区</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">新疆</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">乌鲁木齐</a></nobr>
                            <nobr><a onclick="goCity(this)">阿拉尔</a></nobr>
                            <nobr><a onclick="goCity(this)" name="阿克苏地区">阿克苏地区</a></nobr>
                            <nobr><a onclick="goCity(this)">阿勒泰地区</a></nobr>
                            <nobr><a name="昌吉回族自治州" onclick="goCity(this)">昌吉州</a></nobr>
                            <nobr><a onclick="goCity(this)">哈密地区</a></nobr>
                            <nobr><a onclick="goCity(this)">和田地区</a></nobr>
                            <nobr><a onclick="goCity(this)">喀什地区</a></nobr>
                            <nobr><a onclick="goCity(this)">克拉玛依</a></nobr>
                            <nobr><a onclick="goCity(this)">石河子</a></nobr>
                            <nobr><a onclick="goCity(this)">塔城地区</a></nobr>
                            <nobr><a onclick="goCity(this)">吐鲁番地区</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">云南</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">昆明</a></nobr>
                            <nobr><a onclick="goCity(this)">保山</a></nobr>
                            <nobr><a name="楚雄彝族自治州" onclick="goCity(this)">楚雄州</a></nobr>
                            <nobr><a name="大理白族自治州" onclick="goCity(this)">大理州</a></nobr>
                            <nobr><a name="德宏傣族景颇族自治州" onclick="goCity(this)">德宏州</a></nobr>
                            <nobr><a name="迪庆藏族自治州" onclick="goCity(this)">迪庆州</a></nobr>
                            <nobr><a name="红河哈尼族彝族自治州" onclick="goCity(this)">红河州</a></nobr>
                            <nobr><a onclick="goCity(this)">丽江</a></nobr>
                            <nobr><a onclick="goCity(this)">临沧</a></nobr>
                            <nobr><a name="怒江傈僳族自治州" onclick="goCity(this)">怒江州</a></nobr>
                            <nobr><a onclick="goCity(this)">普洱</a></nobr>
                            <nobr><a onclick="goCity(this)">曲靖</a></nobr>
                            <nobr><a onclick="goCity(this)">昭通</a></nobr>
                            <nobr><a name="文山壮族苗族自治州" onclick="goCity(this)">文山</a></nobr>
                            <nobr><a name="西双版纳傣族自治州" onclick="goCity(this)">西双版纳</a></nobr>
                            <nobr><a onclick="goCity(this)">玉溪</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <nobr><a class="black" onclick="goCity(this)">浙江</a></nobr>：</td>
                        <td>
                            <nobr><a onclick="goCity(this)">杭州</a></nobr>
                            <nobr><a onclick="goCity(this)">湖州</a></nobr>
                            <nobr><a onclick="goCity(this)">嘉兴</a></nobr>
                            <nobr><a onclick="goCity(this)">金华</a></nobr>
                            <nobr><a onclick="goCity(this)">丽水</a></nobr>
                            <nobr><a onclick="goCity(this)">宁波</a></nobr>
                            <nobr><a onclick="goCity(this)">衢州</a></nobr>
                            <nobr><a onclick="goCity(this)">绍兴</a></nobr>
                            <nobr><a onclick="goCity(this)">台州</a></nobr>
                            <nobr><a onclick="goCity(this)">温州</a></nobr>
                            <nobr><a onclick="goCity(this)">舟山</a></nobr>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <nobr><a onclick="goCity(this)" name="香港特别行政区">香港</a></nobr>
                            <nobr><a onclick="goCity(this)" name="澳门特别行政区">澳门</a></nobr>
                            <nobr><a onclick="goCity(this)" name="台北县">台湾</a></nobr>
                        </td>
                    </tr>
                </tbody></table>
            </div><button onclick="hidePop()"></button></div>
        <div class="poput_shadow" style="height: 291px;width:100%"></div>
    </div>
    <!--更换城市 end-->
    <script>
        // tongji.baidu.com
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement('script');
            hm.src = 'https://hm.baidu.com/hm.js?520a61d0af6df31c19bb0fbd9dba0972';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

<script type="text/javascript" src="/static/address/clipboard.js"></script>
<script>
    loadBody();
</script><script charset="gbk" id="_script__MAP_CENTER_" type="text/javascript" src="/static/address/a"></script>


</body></html>