<%@ page import="vo.User"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
  <title>我的小店</title>
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet"  type="text/css" href="res/css/index.css">
  <link rel="shortcut icon" href="res/image/logo.jpg" type="image/x-icon" />
  </head>
  <body>

    <%@include file="block/top-main.jsp"%>
    <%@include file="block/searchblock.jsp"%>
    <!-- 中间导航栏 -->
    <div class="nav-center">
      <div class="center">
        <ul class="nav">
          <li class="mall">主题市场</li>

          <li><a href="##">电器城</a></li>

          <li class="fgf">|</li>

          <li><a href="admin_login.jsp">其他</a></li>
        </ul>
      </div>
    </div>
    <!-- 中间展示区域 -->
    <div id="div4">
      <div class="show">
        <!-- 左部展示区 -->
        <div class="show-left">
          <ul class="item">
            <li>
              <a href="##" target="_blank">手机</a>
              <div class="none">
                <ul>
                  <h5>手机</h5>
                  <li><a href="##">iPhone</a></li>
                  <li><a href="##">华为</a></li>
                  <li><a href="##">棉服</a></li>
                  <li><a href="##">阔腿裤</a></li>
                  <h5>平板</h5>
                  <li><a href="##">外套</li>
                  <li><a href="##">衬衣</a></li>
                  <li><a href="##">夹克</li>
                  <li><a href="##">短裤</a></li>
                  <h5>笔记本</h5>
                  <li><a href="##">棉袜</li>
                  <li><a href="##">长筒袜</a></li>
                  <li><a href="##">秋裤</li>
                  <li><a href="##">内裤</a></li>
                </ul>
              </div>
            </li>
            <li>
              <a href="##">平板</a>
              <div class="none">
                <ul>
                  <h5>手机</h5>
                  <li><a href="##">iPhone</li>
                  <li><a href="##">华为</a></li>
                  <li><a href="##">棉服</li>
                  <li><a href="##">阔腿裤</a></li>
                  <h5>平板</h5>
                  <li><a href="##">外套</li>
                  <li><a href="##">衬衣</a></li>
                  <li><a href="##">夹克</li>
                  <li><a href="##">短裤</a></li>
                  <h5>笔记本</h5>
                  <li><a href="##">棉袜</li>
                  <li><a href="##">长筒袜</a></li>
                  <li><a href="##">秋裤</li>
                  <li><a href="##">内裤</a></li>
                </ul>
              </div>
            </li>
            <li>
              <a href="##">笔记本</a>
              <div class="none">
                <ul>
                  <h5>手机</h5>
                  <li><a href="##">iPhone</li>
                  <li><a href="##">华为</a></li>
                  <li><a href="##">棉服</li>
                  <li><a href="##">阔腿裤</a></li>
                  <h5>平板</h5>
                  <li><a href="##">外套</li>
                  <li><a href="##">衬衣</a></li>
                  <li><a href="##">夹克</li>
                  <li><a href="##">短裤</a></li>
                  <h5>笔记本</h5>
                  <li><a href="##">棉袜</li>
                  <li><a href="##">长筒袜</a></li>
                  <li><a href="##">秋裤</li>
                  <li><a href="##">内裤</a></li>
                </ul>
              </div>
            </li>

          </ul>
        </div>
        <!-- 中部展示区 -->
        <div class="show-center">
          <!-- 中上 -->
          <div class="center-top">
            <div class="lbt">
              <a href="##"><img src="res/image/show1.jpg"></a>
              <a href="##"><img src="res/image/show3.jpg"></a>
              <a href="##"><img src="res/image/show4.jpg"></a>
              <a href="##"><img src="res/image/show5.jpg"></a>
              <a href="##"><img src="res/image/show6.jpg"></a>
            </div>
            <a href="##" class="right">></a>
            <a href="##" class="left"><</a>
          </div>
          <!-- 中下 -->
          <div class="center-bot">
            <!-- 左 -->
            <div class="left">
              <a href="goodsController?goods_id=1"><img src="res/image/show2.jpg" id="img"></a>
            </div>
            <!-- 中 -->
            <div class="center">
              <div class="center-top">
                <a href="##"><img src="res/image/show3.jpg"></a>
              </div>
              <div class="center-bot">
                <a href="##"><img src="res/image/show4.jpg"></a>
              </div>
            </div>
            <!-- 右 -->
            <div class="right">
              <div class="right-top">
                <a href="##"><img src="res/image/show5.jpg"></a>
              </div>
              <div class="right-bot">
                <a href="##"><img src="res/image/show6.jpg"></a>
              </div>
            </div>
          </div>
        </div>
        <!-- 右边展示区 -->
        <div class="show-right">
          <!-- 登录 -->
          <div class="login">
            <div class="top">
              <div class="tx" id="div2">
                <%
                  String url="login.jsp";
                  if(user.getUser_name()!=null){
                    url="myImformation.jsp";
                  }
                %>
                <a href="<%=url%>"><img src="res/image/tx.jpg"></a>
              </div>
            </div>
            <div class="bot">
              <div class="bot-div">
                <%
                  if(user.getUser_name()!=null){
                %>
                <p>您好！<%=user.getUser_name()%>!</p>
                <a href="logoutController">退出</a>
                <%}else {%>
                <a href="login.jsp" id="login">登录</a>
                <a href="regist.jsp">注册</a>
                <%}%>
              </div>
            </div>
          </div>
          <!-- 举报 -->
          <div class="notice">
            <ul class="not">
              <li class="lli" style="border-bottom:2px solid #6ac1d4;">公告</li>
              <li class="lli">规则</li>
              <li class="lli">论坛</li>
              <li class="lli">安全</li>
              <li class="lli">公益</li>
            </ul>
            <div class="nr" style="display: inline-block;">
              <ul class="nei-rong">
                <li>
                  <a href="##">2018小店造物节9月定址西湖</a>
                </li>
                <li>
                  <a href="##">小店618激活传统商圈
                  </a>
                </li>
              </ul>
            </div>
            <div class="nr">
              <ul class="nei-rong">
                <li>
                  <a href="##">《我的小店抽检标准（商用厨房电器）》</a>
                </li>
                <li>
                  <a href="##">《我的小店禁售商品管理规范》
                  </a>
                </li>
              </ul>
            </div>
            <div class="nr">
              <ul class="nei-rong">
                <li>
                  <a href="##">关于新增订单产询服务</a>
                </li>
                <li>
                  <a href="##">云标签工具，30秒打标
                  </a>
                </li>
              </ul>
            </div>
            <div class="nr">
              <ul class="nei-rong">
                <li>
                  <a href="##">小二分享大促干货</a>
                </li>
                <li>
                  <a href="##">中差评功能升级
                  </a>
                </li>
              </ul>
            </div>
            <div class="nr">
              <ul class="nei-rong">
                <li>
                  公益
                  <a href="##">公益“护苗”行动招募</a>
                </li>
                <li>
                  <a href="##">你愿意加入我们吗？
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="xiaoge">
            <ul class="xg">
              <li><a href="##">
                <span class="span1"></span>
                <p>充话费</p>
              </a></li>
              <li><a href="##">
                <span class="span2"></span>
                <p>旅行</p>
              </a></li>
              <li><a href="##">
                <span class="span3"></span>
                <p>车险</p>
              </a></li>
              <li><a href="##">
                <span class="span4"></span>
                <p>游戏</p>
              </a></li>
              <li><a href="##">
                <span class="span5"></span>
                <p>彩票</p>
              </a></li>
              <li><a href="##">
                <span class="span6"></span>
                <p>电影</p>
              </a></li>
              <li><a href="##">
                <span class="span7"></span>
                <p>酒店</p>
              </a></li>
              <li><a href="##">
                <span class="span8"></span>
                <p>理财</p>
              </a></li>
              <li><a href="##">
                <span class="span9"></span>
                <p>找服务</p>
              </a></li>
              <li><a href="##">
                <span class="span10"></span>
                <p>演出</p>
              </a></li>
              <li><a href="##">
                <span class="span11"></span>
                <p>水电煤</p>
              </a></li>
              <li><a href="##">
                <span class="span12"></span>
                <p>火车票</p>
              </a></li>
            </ul>
          </div>
          <div class="bot">
          </div>
        </div>
      </div>
    </div>

    <!-- 固定滚动条 -->
    <div class="bar">
      <ul>
        <li><a href="#">返回顶部</a></li>

        <li><a href="##">购物车</a></li>
        <li><a href="##">个人中心</a></li>
      </ul>
    </div>
    <!-- 底部 -->
    <%@include file="block/buttom.jsp"%>
    <script type="text/javascript">
      // 轮播图
      var yd = document.getElementsByClassName('lbt')[0];
      var left = document.getElementsByClassName('left')[0];
      var right = document.getElementsByClassName('right')[0];

      var index = 0;

      function l(){
        var newLeft;
        index --;
        if(index < 0){
          index = 4;
        }
        if((yd.style.left == "") || (yd.style.left == "0px")){
          newLeft = -2765;
        }else{
          newLeft = parseInt(yd.style.left)+690;
          if(newLeft > -5){
            newLeft = -2765;
          }
        }
        yd.style.left = newLeft + "px";
      }
      left.onclick = function(){
        l();
      }
      function r(){
        var newLeft;
        index ++;
        if(index == 5){
          index = 0;
        }

        if(yd.style.left == ""){
          newLeft = -695;
        }else{
          newLeft = parseInt(yd.style.left)-690;
          if(newLeft < -2765){
            newLeft = -5;
          }
        }
        yd.style.left = newLeft + "px";
      }
      right.onclick = function(){
        r();
      }
      var t = null;
      function autoMove(){
        t = setInterval(function(){
          // l();
          r();
        }, 2000)
      }
      autoMove();
      var ctp = document.getElementsByClassName('center-top')[0];
      ctp.onmouseenter = function(){
        clearInterval(t);
      }
      ctp.onmouseleave = function(){
        autoMove();
      }
      // 选项卡
      var d = document.getElementsByClassName('nr');
      var lli = document.getElementsByClassName('lli');
      for(var i=0; i<lli.length; i++){
        (function(n){
          lli[n].onclick = function(){
            for(var j=0;j<lli.length;j++){
              lli[j].style.borderBottom = 'none';
              d[j].style.display = "none";
            }
            this.style.borderBottom = '2px solid #6ac1d4';
            d[n].style.display = "inline-block";
          }
        }(i))
      }
      //拖拽
      var bar = document.getElementsByClassName('bar')[0];
      bar.style.top = '190px';
      bar.onmousedown = function(e){
        var leny = e.pageY - parseInt(bar.style.top);
        document.onmousemove = function(e){
          bar.style.top = e.pageY - leny + 'px';
        }
      }
      bar.onmouseup = function(){
        // bar.onmousedown = null;
        document.onmousemove = null;
      }
    </script>
</body>
</html>
