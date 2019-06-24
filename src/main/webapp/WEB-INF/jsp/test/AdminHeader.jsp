<%--
  Created by IntelliJ IDEA.
  User: Ammar-Bashrahail
  Date: 5/1/2019
  Time: 5:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>


        /* navbar Css*/


        body{
            margin: 0;
            padding-right: 0;
            font-family: 'Source Sans Pro', sans-serif;
            line-height: 1 !important;
        }

        .navbar_admin{
            height: 44px;
            background-color: #313131;
            /*
                    position: sticky;
                    top: 0;
            */



        }

        .menu{
            position: relative;
            margin: 0 auto;
            width: 1000px;
            overflow: hidden;
        }
        .menu-item:hover{
            color: #FFB6C1
        ;
        }
        .menu ul {
            width: 100%;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: space-between;
        }

        .menu ul li{
            list-style: none;
        }
        .menu ul li,
        .menu ul li a
        {
            color: #fff;
            line-height: 44px;
            text-decoration: none;
        }
        .menu ul li a .fas.fa-university{
            font-size: 20px;
        }

        .menu ul li a.menu-item{

            transform: scale(1);
            transition: 0.5s;
            display: block;
        }
        .menu ul li a.menu-item.hide-item
        {
            transform: scale(0);
        }

        .menu ul li:nth-child(2) a.menu-item.hide-item
        {
            transition-delay: 0.6s;
        }
        .menu ul li:nth-child(3) a.menu-item.hide-item
        {
            transition-delay: 0.5s;
        }
        .menu ul li:nth-child(4) a.menu-item.hide-item
        {
            transition-delay: 0.4s;
        }
        .menu ul li:nth-child(5) a.menu-item.hide-item
        {
            transition-delay: 0.3s;
        }
        .menu ul li:nth-child(6) a.menu-item.hide-item
        {
            transition-delay: 0.2s;
        }
        .menu ul li:nth-child(7) a.menu-item.hide-item
        {
            transition-delay: 0.1s;
        }
        .menu ul li:nth-child(8) a.menu-item.hide-item
        {
            transition-delay: 0s;
        }


        .menu ul li:nth-child(2) a.menu-item
        {
            transition-delay: 0s;
        }
        .menu ul li:nth-child(3) a.menu-item
        {
            transition-delay: 0.1s;
        }
        .menu ul li:nth-child(4) a.menu-item
        {
            transition-delay: 0.2s;
        }
        .menu ul li:nth-child(5) a.menu-item
        {
            transition-delay: 0.3s;
        }
        .menu ul li:nth-child(6) a.menu-item
        {
            transition-delay: 0.4s;
        }
        .menu ul li:nth-child(7) a.menu-item
        {
            transition-delay: 0.5s;
        }
        .menu ul li:nth-child(8) a.menu-item
        {
            transition-delay: 0.6s;
        }
        .search-form{
            position: absolute;
            top: 0;
            left: 50%;
            transform: translateX(0);
            width: 600px;
            height: 44px;
            opacity: 0;
            visibility: hidden;
            transition: 0.5s;
        }
        .search-form input{
            width: 100%;
            height: 44px;
            background: transparent;
            color: #fff;
            border: none;
            outline: none;
            font-size: 16px;

        }

        .search-form input::placeholder
        {
            color: gainsboro;

        }

        .search-form:before
        {
            font-family: "Font Awesome 5 Free";
            font-weight: 900;
            content: "\f002";
            position: absolute;
            top: 12px;
            left: -26px;
            color: gainsboro;

        }
        .search-form.active{
            opacity: 1;
            visibility: visible;
            transition-delay: 0.5s;
            transform: translateX(-50%);
        }
        .close{
            position: absolute;
            right:30px;
            top: 13;
            height: 44px;
            background: #313131;
            color: #fff !important;
            line-height: 44px;
            font-size: 18px;
            text-align: right;
            width: 20px;
            cursor: pointer;
            opacity: 0;
            visibility: hidden;
        }
        .close.active{
            opacity: 1;
            visibility: visible;
        }

        /*    dropdown Setting*/

        .fas{
            line-height: none;
        }

        .dropdown{
            display: inline-block;
            position: relative;
            top: 13px;
        }
        .dropdown:hover div{
            visibility: visible;

            opacity: 1;
        }

        .dropdown a i:hover{
            transform: rotate(180deg);
            transition: 1s;
            visibility: visible;
        }
        .dropdown div{
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            z-index: 1;
            visibility: hidden;
            position: fixed;
            width: 8rem;
            opacity: 0;
            transition: .3s;
        }

        .dropdown div a{
            display: block;
            text-decoration: none;
            padding: 8px;
            color: #000;
            transition: .1s;
            position: sticky;

        }
        .dropdown div a:hover{
            background-color: #D3D3D3;
        }

        /*    dropdown Setting*/

        /* navbar Css*/

    </style>
</head>
<body>
<nav class="navbar_admin">
    <div class="menu ">
        <ul>
            <li><a href="#" ><i class="fas fa-university"></i></a></li>
            <li><a href="#" class="menu-item">Home</a></li>
            <li><a href="#" class="menu-item">About</a></li>
            <li><a href="#" class="menu-item">University</a></li>
            <li><a href="#" class="menu-item">English Course</a></li>
            <li><a href="#" class="menu-item">News</a></li>
            <li><a href="#" class="menu-item">Visa</a></li>
            <li><a href="#" class="menu-item">Chats</a></li>
            <li><a href="#" id="search"><i class="fas fa-search"></i></a></li>

            <div class="dropdown">
                <li><a href="#" class="menu-item" ><i class="fas fa-cog"></i></a></li>


                <div>
                    <a herf="#">Add University</a>
                    <a herf="#">Link</a>
                    <a herf="#">Link</a>
                </div>


            </div>
        </ul>

        <div class="search-form">
            <form>
                <input type="text" name="" placeholder="Search Uni.com">

            </form>
        </div>

        <a class="close"><i class="fas fa-times"></i></a>

    </div>


</nav>
</body>
</html>
