<!DOCTYPE html>
<!-- saved from url=(0070)http://dayi.im/qlib/m/english_quiz/h?wxid=oNUJ4jl0RfNlr2k0Yu9CxQW6xTy4 -->
<html><head lang="zh-CN"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    
    <meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=2.0, user-scalable=no" name="viewport">
    <meta name="MobileOptimized" content="320">

    <!--bootstrap begin-->
    <link rel="stylesheet" href="<?=base_url('projectdefinedsrc/tiku/bootstrap.min.css')?>">
    <link rel="stylesheet" href="<?=base_url('projectdefinedsrc/tiku/bootstrap-theme.min.css')?>">
    <script src="<?=base_url('projectdefinedsrc/tiku/jquery.js')?>"></script>
    <script src="<?=base_url('projectdefinedsrc/tiku/bootstrap.min.js')?>"></script>
    <!--bootstrap end-->
    <link rel="stylesheet" href="<?=base_url('projectdefinedsrc/tiku/wap_quiz.css?version=20131015')?>">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="<?=base_url('projectdefinedsrc/tiku/html5shiv.js')?>"></script>
      <script src="<?=base_url('projectdefinedsrc/tiku/respond.min.js')?>"></script>
    <![endif]-->
    <script src="<?=base_url('projectdefinedsrc/tiku/jquery.cookie.js')?>"></script>
    
    
    <script src="<?=base_url('projectdefinedsrc/tiku/dajaxice.core.js')?>" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="<?=base_url('projectdefinedsrc/tiku/qlibquiz.js')?>" charset="UTF-8"></script>
    <style type="text/css">

        .list-group-item-custom-focus {
            text-decoration: none;
            background-color: #f5f5f5;
        }

        .list-group-item.success,
        .list-group-item.success:hover,
        .list-group-item.success:focus {
            z-index: 2;
            color: #ffffff;
            background-color: #398439;
            border-color: #398439;
            background-image: -webkit-gradient(linear,left 0,left 100%,from(#47a447),to(#398439));
        }

        .list-group-item.warning,
        .list-group-item.warning:hover,
        .list-group-item.warning:focus {
            z-index: 2;
            color: #ffffff;
            background-color: #f0ad4e;
            border-color: #f0ad4e;
            background-image: -webkit-gradient(linear,left 0,left 100%,from(#f0ad4e),to(#eea236));
        }
        
        .div-inline{ display: inline}
    </style>
    <script>
        //hidden share(top right corner button )
        document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
            WeixinJSBridge.call('hideOptionMenu');
        });
    </script>
    <title>无线软件日</title>
</head>
<body>
<div class="navbar navbar-inner ">
    <div class="container">
        <a class="brand" href="http://dayi.im/qlib/m/english_quiz/h?wxid=oNUJ4jl0RfNlr2k0Yu9CxQW6xTy4#" name="top"><span><img src="<?=base_url('projectdefinedsrc/tiku/logo.png')?>"></span></a>
        <div class="nav-collapse collapse">

        </div>
    </div>
</div>
<script>
function getgift(openid)
{
    if (confirm('本消息是领奖确认，未实际领取奖励不要点， 确定已经到工作人员这里领奖?'))
    {
        do_getgift(openid);
    }
}


function do_getgift(openid)
{
    $.ajax({
      url: "<?=base_url('onlinetest/ajax_get_gift/')?>",

      type: 'POST',

      data:{'openid': openid},

      dataType: 'json',

      timeout: 10000,

      error: function(data,e){},

      success: function(result){
        
        if (result.success)
        {
          //window.location.reload();
          $('#isgetgift').empty();
          $('#isgetgift').append('<a href="javascript:void(0)"  class="btn btn-default"><i class="glyphicon glyphicon glyphicon-saved"></i>&nbsp;已经领奖</a>');
          $('#continueanswer').empty();

        }
        else
        {
           //alert('会话已经超时，请刷新页面');
        }
      }

      });   
}
</script>
<div class="page">
    <div id="wrap">

        <div class="container">
            <form id="postForm" method="get" action="http://dayi.im/qlib/m/english_quiz/h">
                <input type="hidden" name="csrfmiddlewaretoken" value="wltXGC7xVhSysLccNr1eTOSJcc5iovxC">
                <input id="hidden_qapackids" type="hidden" name="qapackIds">
                <input id="hidden_wxid" type="hidden" name="wxid" value="oNUJ4jl0RfNlr2k0Yu9CxQW6xTy4">
            </form>

            <input id="hidden_subject" type="hidden" value="3">
            <input id="hidden_qtype" type="hidden" value="1">
            <div class="list-group" id="div_choice_item">
                <li class="list-group-item list-group-item-custom-focus">
                    
                    <p>总共答了<?=$answered?>题，答对<?=$score?>题,答错<?=$answered-$score?>题</p>
                </li>
                
                        
                        <a name="answer_item" class="list-group-item">
                            &nbsp;&nbsp;<strong><span name="choice_name">排第<?=$pos?>名</span>.</strong>
                        </a>
                        
                       
                

                        <a name="answer_item" class="list-group-item">
                            &nbsp;&nbsp;<strong><span name="choice_name">正确率<?=(int)($answered? (($score/$answered)*100) : 0)?>%</span>.</strong>
                        </a>
                        <a name="answer_item" class="list-group-item">
                            &nbsp;&nbsp;<strong><span name="choice_name">战胜了<?=$pos_percent?>%的新员工</span>.</strong>
                        </a>
                        <a name="answer_item" class="list-group-item">
                            &nbsp;&nbsp;<span name="choice_name">打开时间：<?=date('Y-m-d H:i:s',time())?></span>
                        </a>
                        <a name="answer_item" class="list-group-item" href="<?=$c_url = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']?>">
                            &nbsp;&nbsp;<span name="choice_name">刷新页面</span>
                        </a>

                        
                        <input type="hidden" id="choice_answer" value="D">
                    
                
                <li class="list-group-item list-group-item-custom-focus">
                    <div class="row">
                        <!--div class="col-xs-4" id="continueanswer">
                           <?php
                            //if (!$is_gift)
                            //{
                              //  ?>
                           &nbsp;答题停止
                            <a href="javascript:next();" class="btn btn-primary hidden" id="btn_next"><i class="glyphicon glyphicon-forward"></i>&nbsp;下一道题</a>
                            <?php

                        //}?>
                        </div-->
                        

                            <?php
                            if ($is_gift)
                            {
                            ?>
                            
                            <div class="col-sm-offset-5 col-sm-2 text-center" id="isgetgift">
                            <a href="javascript:void(0)"  class="btn btn-default center-block"><i class="glyphicon glyphicon glyphicon-saved"></i>&nbsp;已经领奖</a>
                            </div>
                            
                            <?php
                            }
                            else
                            {
                            ?>
                            <div class="col-xs-2"></div>
                            <div class="col-xs-4">
                                 <a href="<?=base_url('onlinetest/test')?>?openid=<?=$openid?>"  class="btn btn-primary"><i class="glyphicon glyphicon glyphicon-forward"></i>&nbsp;继续答题</a>
                            </div>
                            <div class="col-xs-4">
                                <a href="javascript:getgift('<?=$user_openid?>')"  class="btn btn-primary"><i class="glyphicon glyphicon glyphicon-saved"></i>&nbsp;确认领奖</a>
                            </div>
                            <?php
                            }
                            ?>
                            
                        <div class="col-xs-8 hidden" id="div_tips_not_select">
                            <h4><span class="label label-warning pull-right">请选择答案！</span></h4>
                        </div>
                        <div class="col-xs-8 hidden" id="div_tips_words_ready">
                            <h4><span class="label label-info pull-right">进入下一轮！</span></h4>
                        </div>
                        <div class="col-xs-8 hidden" id="div_tips_post_result">
                            <h4><span class="label label-success pull-right">答对：%s2&nbsp;,&nbsp;%s3</span></h4>
                        </div>
                        
                    </div>
                    <div class="row">
                        <div class="col-xs-12 hidden" id="stimulate_tips">
                            <h4><span class="label label-success pull-left"></span></h4>
                        </div>
                    </div>
                </li>
            </div>
            <div id="div_analysis_body_block"><center>奖项设置：<br>
        终榜排名： <br>
1-5名，奖励精美“正当其时”主题大礼包一套(精彩超出你的想象) <br>
6-20名，奖励精美“正当其时”主题文化衫一件 <br>
21-60名，奖励精美“正当其时”创意鼠标垫一个 <br>
61-120名，奖励精美“正当其时”个性正能量水杯一只 <br>
121-200名，奖励精美“正当其时”炫酷护腕一副 <br>
</center><div/>
            <!-- <div id="div_analysis_body_block" class="hidden">
                <p>
                </p><ul class="list-group">
                    
                        <li class="list-group-item list-group-item-custom-focus">
                            <span class="label label-primary li_left">答案</span>&nbsp;&nbsp;<small class="li_right">A项，in all “总共”；<br>B项，in fact “事实上”；<br>C项，in short “总之；简言之”；<br>D项，in return “作为报答”。<br>结合语境，只有D项符合题意，故正确答案为D。</small><div class="clear"></div>
                            <div class="clearfix"></div>
                        </li>
                    
                    
                        <li class="list-group-item list-group-item-custom-focus">
                            <span class="label label-primary li_left">解析</span>&nbsp;&nbsp;<small class="li_right">我们给小狗们我们所能给的时间，空间和爱，狗狗们也把这些东西回报给我们。</small><div class="clear"></div>
                            <div class="clearfix"></div>
                        </li>
                    
                    
                        <li class="list-group-item list-group-item-custom-focus">
                            <span class="label label-primary li_left">考点</span>&nbsp;&nbsp;<small class="li_right">介词</small><div class="clear"></div>
                            <div class="clearfix"></div>
                        </li>
                    
                    
                </ul>
                <p></p>
            </div> -->

        </div>

    </div>
</div>

<div class="modal-footer">
    <a class="pull-left" href="javascript:void(0);">无线软件日</a><a class="brand" href="javascript:void(0);">无线网络软件平台</a>
</div>

<div style="display:none;">
    <script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fb5ff8ce12a9f8e6e533b601c35d79a49' type='text/javascript'%3E%3C/script%3E"));
    </script><script src="<?=base_url('projectdefinedsrc/tiku/h.js')?>" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=b5ff8ce12a9f8e6e533b601c35d79a49" target="_blank"><img border="0" src="<?=base_url('projectdefinedsrc/tiku/21.gif')?>" width="20" height="20"></a>
</div>
<script>
var isanswered = 0;
function chooseit(openid, questionid, rightanswer, chooseid)
{
    if (isanswered == 0)
    {
        if (rightanswer == chooseid)
        {
            //alert('√');
            $('#judge'+chooseid).html('&nbsp;&nbsp;<strong><font color=green>√</font></strong>');
            isanswered++;
        }
        else
        {
            //alert('×');
            $('#judge'+chooseid).html('&nbsp;&nbsp;<strong><font color=red>×</font></strong>');
            isanswered++;
        }
    }
    
}
</script>




</body></html>