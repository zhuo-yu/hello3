<%@ page import="java.util.List" %>
<%@ page import="User.User" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 卓
  Date: 2019/10/4
  Time: 23:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="/css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/jquery.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $(".click").click(function(){
                $(".tip").fadeIn(200);
            });

            $(".tiptop a").click(function(){
                $(".tip").fadeOut(200);
            });

            $(".sure").click(function(){
                $(".tip").fadeOut(100);
            });

            $(".cancel").click(function(){
                $(".tip").fadeOut(100);
            });

        });
    </script>


</head>


<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">管理信息</a></li>
        <li><a href="#">查看用户信息</a></li>
    </ul>
</div>

<div class="rightinfo">



    <table class="tablelist">
        <thead>
        <tr>
            <th></th>
            <th>用户Id<i class="sort"><img src="/images/px.gif" /></i></th>
            <th>用户名</th>
            <th>密码</th>
            <th>性别</th>
            <th>年龄</th>
            <th>出生年月</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<User> showuser=(ArrayList<User>)request.getAttribute("showuser");
            for(User u:showuser){
        %>
        <tr>
            <td><input name="" type="checkbox" value="" /></td>
            <td><%=u.getUid()%></td>
            <td><%=u.getUname()%></td>
            <td><%=u.getPwd()%></td>
            <%
                String Sex=null;
                String sex=((User)session.getAttribute("user")).getSex();
                if(sex.equals("1")){
                    Sex="男";
                }else{
                    Sex="女";
                }
            %>
            <td><%=Sex%></td>
            <td><%=u.getAge()%></td>
            <td><%=u.getBirth()%></td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>



    <div class="tip">
        <div class="tiptop"><span>提示信息</span><a></a></div>

        <div class="tipinfo">
            <span><img src="/images/ticon.png" /></span>
            <div class="tipright">
                <p>是否确认对信息的修改 ？</p>
                <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
            </div>
        </div>

        <div class="tipbtn">
            <input name="" type="button"  class="sure" value="确定" />&nbsp;
            <input name="" type="button"  class="cancel" value="取消" />
        </div>

    </div>




</div>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>

</body>

</html>
