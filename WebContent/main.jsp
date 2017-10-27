<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" class="no-js">



    <head>



        <meta charset="utf-8">

        <title>用户信息</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <meta name="description" content="">

        <meta name="author" content="">



        <!-- CSS -->

        <link rel="stylesheet" href="assets/css/reset.css">

        <link rel="stylesheet" href="assets/css/supersized.css">

        <link rel="stylesheet" href="assets/css/style.css">



        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->

        <!--[if lt IE 9]>

            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>

        <![endif]-->


		<style type="text/css">
			th{
				background-color: rgb(156, 186, 95);
				color: #fff;
				border-bottom-width: 0;
			}
			td{
				color:white;
			}
			tr,th{
				border-width: 1px;
				border-style: solid;
				border-color: gray;
			}
			td,th{
				padding: 5px 10px;
				font-size: 12px;
				font-family: Verdana;
				font-weight: bold;
			}
		</style>
    </head>



    <body>
		<h5><a href = '/nelson/login.jsp' style="color: lawngreen; font-size: 15px; position: absolute; right: 50px;">退出登录</a></h5>
		<div style="height: 100px;">
			<h1 style="margin-top: 80px; font-family: '微软雅黑';">用户信息</h1>
			
			
		</div>

        <div align="center">

		    <table >
				<tr>
				<th>id号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>邮箱</th>
				<th>电话</th>
				<th>操作</th>
				<th><a href = "/nelson/add.jsp">添加用户</a></th>
				</tr>
				<c:forEach items ="${ll}" var ="test">
				<tr>
				<td>${test.id }</td>
				<td>${test.username }</td>
				<td>${test.sex }</td>
				<td>${test.email }</td>
				<td>${test.phone }</td>
				<td><a href = "/nelson/DelServlet?id=${test.id}">删除</a></td>
				</tr>
				</c:forEach>
				
				
				
			</table>
           
		
        </div>
		<div style="height: 50px;"></div>
      
 		<div class="bottom">

                

                

                    Copyright © 2013-2017  何惧岁月老去  Lovespace All Rights Reserved. 备案号：鄂ICP备17020904号-1

                

            </div>


        <!-- Javascript -->

        <script src="assets/js/jquery-1.8.2.min.js"></script>

        <script src="assets/js/supersized.3.2.7.min.js"></script>

        <script src="assets/js/supersized-init.js"></script>

        <script src="assets/js/scripts.js"></script>



    </body>



</html>
