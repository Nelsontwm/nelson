<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">



    <head>



        <meta charset="utf-8">

        <title>用户登录</title>

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



    </head>



    <body>



        <div class="page-container">

            <h1>Login</h1>

            <form action="LoginServlet" method="post">

                <input type="text" name="username" class="username" placeholder="Username">

                <input type="password" name="password" class="password" placeholder="Password">

                <button type="submit">Sign me in</button>

                <div class="error"><span>+</span></div>

            </form>

            <div class="connect">

                <p>Or connect with:</p>

                <p>

                    <a class="facebook" href="/nelson/register.jsp"></a>

                    <a class="twitter" href="/nelson/register.jsp"></a>

                </p>

            </div>

        </div>

      
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