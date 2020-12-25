<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
  <title>芜湖网</title>
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

          <li><a href="SearchByCategoryController?goods_category=1">手机</a></li>
          <li class="fgf">|</li>
          <li><a href="SearchByCategoryController?goods_category=2">台式电脑</a></li>
          <li class="fgf">|</li>
          <li><a href="SearchByCategoryController?goods_category=3">笔记本</a></li>
          <li class="fgf">|</li>
          <li><a href="SearchByCategoryController?goods_category=4">外设</a></li>
          <li class="fgf">|</li>
          <li><a href="SearchByCategoryController?goods_category=5">其他</a></li>
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
              <a style="position: relative;left: 18px;" href="##" target="_blank">手机</a>
              <div class="none">
                <ul>
                  <h5>手机</h5>
                  <li><a href="SearchController?keyword=iPhone">iPhone</a></li>
                  <li><a href="SearchController?keyword=华为">华为</a></li>
                  <li><a href="SearchController?keyword=小米">小米</a></li>
                  <li><a href="SearchController?keyword=OPPO">OPPO</a></li>
                  <li><a href="SearchController?keyword=vivo">vivo</a></li>
                  <h5>台式电脑</h5>
                  <li><a href="SearchController?keyword=惠普">惠普</a></li>
                  <li><a href="SearchController?keyword=戴尔">戴尔</a></li>
                  <li><a href="SearchController?keyword=雷神">雷神</a></li>
                  <li><a href="SearchController?keyword=外星人">外星人</a></li>
                  <h5>笔记本</h5>
                  <li><a href="SearchController?keyword=MacBook">MacBook</a></li>
                  <li><a href="SearchController?keyword=华硕">华硕</a></li>
                  <li><a href="SearchController?keyword=联想">联想</a></li>
                  <li><a href="SearchController?keyword=戴尔">戴尔</a></li>
                  <h5>外设</h5>
                  <li><a href="SearchController?keyword=雷蛇">雷蛇</a></li>
                  <li><a href="SearchController?keyword=罗技">罗技</a></li>
                  <li><a href="SearchController?keyword=cherry">cherry</a></li>
                  <li><a href="SearchController?keyword=达尔优">达尔优</a></li>
                  <h5>其他</h5>
                  <li><a href="SearchByCategoryController?goods_category=5">其他</a></li>
                </ul>
              </div>
            </li>

            <li>
              <a style="position: relative;left: 18px;" href="##" target="_blank">台式电脑</a>
              <div class="none">
                <ul>
                  <h5>手机</h5>
                  <li><a href="SearchController?keyword=iPhone">iPhone</a></li>
                  <li><a href="SearchController?keyword=华为">华为</a></li>
                  <li><a href="SearchController?keyword=小米">小米</a></li>
                  <li><a href="SearchController?keyword=OPPO">OPPO</a></li>
                  <li><a href="SearchController?keyword=vivo">vivo</a></li>
                  <h5>台式电脑</h5>
                  <li><a href="SearchController?keyword=惠普">惠普</a></li>
                  <li><a href="SearchController?keyword=戴尔">戴尔</a></li>
                  <li><a href="SearchController?keyword=雷神">雷神</a></li>
                  <li><a href="SearchController?keyword=外星人">外星人</a></li>
                  <h5>笔记本</h5>
                  <li><a href="SearchController?keyword=MacBook">MacBook</a></li>
                  <li><a href="SearchController?keyword=华硕">华硕</a></li>
                  <li><a href="SearchController?keyword=联想">联想</a></li>
                  <li><a href="SearchController?keyword=戴尔">戴尔</a></li>
                  <h5>外设</h5>
                  <li><a href="SearchController?keyword=雷蛇">雷蛇</a></li>
                  <li><a href="SearchController?keyword=罗技">罗技</a></li>
                  <li><a href="SearchController?keyword=cherry">cherry</a></li>
                  <li><a href="SearchController?keyword=达尔优">达尔优</a></li>
                  <h5>其他</h5>
                  <li><a href="SearchByCategoryController?goods_category=5">其他</a></li>
                </ul>
              </div>
            </li>

            <li>
              <a style="position: relative;left: 18px;" href="##" target="_blank">笔记本</a>
              <div class="none">
                <ul>
                  <h5>手机</h5>
                  <li><a href="SearchController?keyword=iPhone">iPhone</a></li>
                  <li><a href="SearchController?keyword=华为">华为</a></li>
                  <li><a href="SearchController?keyword=小米">小米</a></li>
                  <li><a href="SearchController?keyword=OPPO">OPPO</a></li>
                  <li><a href="SearchController?keyword=vivo">vivo</a></li>
                  <h5>台式电脑</h5>
                  <li><a href="SearchController?keyword=惠普">惠普</a></li>
                  <li><a href="SearchController?keyword=戴尔">戴尔</a></li>
                  <li><a href="SearchController?keyword=雷神">雷神</a></li>
                  <li><a href="SearchController?keyword=外星人">外星人</a></li>
                  <h5>笔记本</h5>
                  <li><a href="SearchController?keyword=MacBook">MacBook</a></li>
                  <li><a href="SearchController?keyword=华硕">华硕</a></li>
                  <li><a href="SearchController?keyword=联想">联想</a></li>
                  <li><a href="SearchController?keyword=戴尔">戴尔</a></li>
                  <h5>外设</h5>
                  <li><a href="SearchController?keyword=雷蛇">雷蛇</a></li>
                  <li><a href="SearchController?keyword=罗技">罗技</a></li>
                  <li><a href="SearchController?keyword=cherry">cherry</a></li>
                  <li><a href="SearchController?keyword=达尔优">达尔优</a></li>
                  <h5>其他</h5>
                  <li><a href="SearchByCategoryController?goods_category=5">其他</a></li>
                </ul>
              </div>
            </li>

            <li>
              <a style="position: relative;left: 18px;" href="##" target="_blank">外设</a>
              <div class="none">
                <ul>
                  <h5>手机</h5>
                  <li><a href="SearchController?keyword=iPhone">iPhone</a></li>
                  <li><a href="SearchController?keyword=华为">华为</a></li>
                  <li><a href="SearchController?keyword=小米">小米</a></li>
                  <li><a href="SearchController?keyword=OPPO">OPPO</a></li>
                  <li><a href="SearchController?keyword=vivo">vivo</a></li>
                  <h5>台式电脑</h5>
                  <li><a href="SearchController?keyword=惠普">惠普</a></li>
                  <li><a href="SearchController?keyword=戴尔">戴尔</a></li>
                  <li><a href="SearchController?keyword=雷神">雷神</a></li>
                  <li><a href="SearchController?keyword=外星人">外星人</a></li>
                  <h5>笔记本</h5>
                  <li><a href="SearchController?keyword=MacBook">MacBook</a></li>
                  <li><a href="SearchController?keyword=华硕">华硕</a></li>
                  <li><a href="SearchController?keyword=联想">联想</a></li>
                  <li><a href="SearchController?keyword=戴尔">戴尔</a></li>
                  <h5>外设</h5>
                  <li><a href="SearchController?keyword=雷蛇">雷蛇</a></li>
                  <li><a href="SearchController?keyword=罗技">罗技</a></li>
                  <li><a href="SearchController?keyword=cherry">cherry</a></li>
                  <li><a href="SearchController?keyword=达尔优">达尔优</a></li>
                  <h5>其他</h5>
                  <li><a href="SearchByCategoryController?goods_category=5">其他</a></li>
                </ul>
              </div>
            </li>

            <li>
              <a style="position: relative;left: 18px;" href="##" target="_blank">其他</a>
              <div class="none">
                <ul>
                  <h5>手机</h5>
                  <li><a href="SearchController?keyword=iPhone">iPhone</a></li>
                  <li><a href="SearchController?keyword=华为">华为</a></li>
                  <li><a href="SearchController?keyword=小米">小米</a></li>
                  <li><a href="SearchController?keyword=OPPO">OPPO</a></li>
                  <li><a href="SearchController?keyword=vivo">vivo</a></li>
                  <h5>台式电脑</h5>
                  <li><a href="SearchController?keyword=惠普">惠普</a></li>
                  <li><a href="SearchController?keyword=戴尔">戴尔</a></li>
                  <li><a href="SearchController?keyword=雷神">雷神</a></li>
                  <li><a href="SearchController?keyword=外星人">外星人</a></li>
                  <h5>笔记本</h5>
                  <li><a href="SearchController?keyword=MacBook">MacBook</a></li>
                  <li><a href="SearchController?keyword=华硕">华硕</a></li>
                  <li><a href="SearchController?keyword=联想">联想</a></li>
                  <li><a href="SearchController?keyword=戴尔">戴尔</a></li>
                  <h5>外设</h5>
                  <li><a href="SearchController?keyword=雷蛇">雷蛇</a></li>
                  <li><a href="SearchController?keyword=罗技">罗技</a></li>
                  <li><a href="SearchController?keyword=cherry">cherry</a></li>
                  <li><a href="SearchController?keyword=达尔优">达尔优</a></li>
                  <h5>其他</h5>
                  <li><a href="SearchByCategoryController?goods_category=5">其他</a></li>
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
              <a href="SearchController?keyword=华为"><img src="res/image/lunbo1.jpg"></a>
              <a href="SearchController?keyword=电脑"><img src="res/image/lunbo2.jpg"></a>
              <a href="SearchController?keyword=华硕"><img src="res/image/lunbo3.jpg"></a>
              <a href="SearchController?keyword=雷蛇"><img src="res/image/lunbo4.jpg"></a>
              <a href="SearchController?keyword=vivo"><img src="res/image/lunbo5.jpg"></a>
            </div>
            <a href="##" class="right">></a>
            <a href="##" class="left"><</a>
          </div>
          <!-- 中下 -->
          <div class="center-bot">
            <!-- 左 -->
            <div class="left">
              <a href="SearchByCategoryController?goods_category=5"><img src="res/image/lunbo6.jpg" id="img"></a>
            </div>
            <!-- 中 -->
            <div class="center">
              <div class="center-top">
                <a href="SearchController?keyword=vivo"><img src="res/image/lunbo5.jpg"></a>
              </div>
              <div class="center-bot">
                <a href="SearchController?keyword=电脑"><img src="res/image/lunbo2.jpg"></a>
              </div>
            </div>
            <!-- 右 -->
            <div class="right">
              <div class="right-top">
                <a href="SearchController?keyword=华硕"><img src="res/image/lunbo3.jpg"></a>
              </div>
              <div class="right-bot">
                <a href="SearchController?keyword=雷蛇"><img src="res/image/lunbo4.jpg"></a>
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
                <a href="<%=url%>"><img style="border-radius: 25px;" src="res/image/tx.jpg"></a>
              </div>
            </div>
            <div class="bot">
              <div class="bot-div" style="margin-top: -6px;">
                <%
                  if(user.getUser_name()!=null){
                %>

                <div style="position: relative;top: 5px;">
                  <table style="text-align: center">
                    <tr>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                      <td>
                        <p>您好！<%=user.getUser_name()%></p>
                      </td>
                      <td>&nbsp;&nbsp;</td>
                      <td>
                        <a style="width: 64px; color: #A10000;" href="userController?method=logout">退出登录</a>
                      </td>
                    </tr>
                  </table>
                  <div style="position: relative;padding-top: 6px;">
                    <a style="width: 64px; " href="myImformation.jsp">个人中心</a>
                    <a style="width: 64px; " href="cart.jsp">购物车</a>
                  </div>
                </div>

                <%}else {%>
                <a href="login.jsp" id="login">登录</a>
                <a href="regist.jsp">注册</a>
                <%}%>
              </div>
            </div>
          </div>
          <div class="notice">
            <ul class="not" style="padding-top: 30px;">
              <li class="lli" style="border-bottom:2px solid #6ac1d4;">公告</li>
              <li class="lli">规则</li>
              <li class="lli">论坛</li>
              <li class="lli">安全</li>
              <li class="lli">公益</li>
            </ul>
            <div class="nr" style="display: inline-block;">
              <ul class="nei-rong">
                <li>
                  <a href="##">2020芜湖网12月开放</a>
                </li>
                <li>
                  <a href="##">芜湖网激活传统商圈
                  </a>
                </li>
                <li>
                  <a href="##">开发团队：芜湖，起飞小组全体成员
                  </a>
                </li>
              </ul>
            </div>
            <div class="nr">
              <ul class="nei-rong">
                <li>
                  <a href="##">《芜湖网抽检标准》</a>
                </li>
                <li>
                  <a href="##">《芜湖网禁售商品管理规范》
                  </a>
                </li>
              </ul>
            </div>
            <div class="nr">
              <ul class="nei-rong">
                <li>
                  <a href="##">欢迎大家在置顶帖中留下自己的建议</a>
                </li>
                <li>
                  <a href="##">震惊，两男子竟在大半夜干这事...
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
          <div class="bot">
          </div>
        </div>
      </div>
    </div>
    <!-- 固定滚动条 -->
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
