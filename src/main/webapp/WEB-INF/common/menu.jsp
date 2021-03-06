<%--
  Created by IntelliJ IDEA.
  User: 牛李
  Date: 2016/6/11
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <i class="fa fa-th-list"></i>
        </button>
        <a class="navbar-brand" href="/index">AUST</a>
    </div>
    <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
            <li><a href="/start">起步</a></li>
            <li><a href="/practice">训练</a></li>
            <li><a href="/master">进阶</a></li>
            <li><a href="/contest">比赛</a></li>
            <li><a href="/rank">排名</a></li>
            <li><a href="/articles">干货</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">联系我们<b class="caret"></b></a>
                <ul class="dropdown-menu animated fadeIn">
                    <li><a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=fBIVCRAVTU08DQ1SHxMR" target="_blank"><i class="fa fa-envelope-o fa-fw"></i>&nbsp;&nbsp;文章投稿</a></li>
                    <li><a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=fBIVCRAVTU08DQ1SHxMR" target="_blank"><i class="fa fa-envelope-o fa-fw"></i>&nbsp;&nbsp;题目投稿</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">意见反馈</li>
                    <li><a href="#footer"><i class="fa fa-qq"></i>&nbsp;&nbsp;QQ</a></li>
                    <li><a href="#footer"><i class="fa fa-wechat"></i>&nbsp;&nbsp;We Chat</a></li>
                </ul>
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <c:if test="${sessionScope.userLogin != null}">
                <li><a href="/user/${sessionScope.userLogin.id}">${sessionScope.userLogin.nickname}</a></li>
                <li><a href="/loginout">退出</a></li>
            </c:if>
            <c:if test="${sessionScope.userLogin == null}">
                <li><a href="/login">Login in</a></li>
                <li><a href="/register">Register</a></li>
            </c:if>

        </ul>
    </div><!--/.nav-collapse -->
</div>
