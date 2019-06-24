<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ammar-Bashrahail
  Date: 5/1/2019
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>UniversityHome</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- FONT Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <style type="text/css">



        .mg-b-30 {
            margin-bottom: 30px;
        }

        .shop-item
        {
            border: 1px solid #E1E1E1;
            border-radius: 5px;
            background: #FFF;
        }


        .shop-item .photo img
        {
            margin: 0 auto;
            width: 100px;
            position: relative;
            left: 50px;
            height: 100px;
            align-content: center;
        }

        .shop-item .info
        {
            padding: 10px;
            border-radius: 0 0 5px 5px;
            margin-top: 1px;
        }






        .price-text-color
        {
            margin-top: 5px;
            color: #20A1FF;
            height: 3rem;

        }
        #card-marg{
            position: relative;
            left: 1px;
        }




        #card-mar{
            margin-left: 10px;
            margin-top: 5px;
        }

        #nav{
            background:	radial-gradient(circle at 150px 0, transparent 50px, #fabada ) 0 0;
            background-size: 100% 100%;
            background-repeat: no-repeat;
        }






        .loginmodal-container {
            padding: 30px;
            max-width: 350px;
            width: 100% !important;
            background-color: #F7F7F7;
            margin: 0 auto;
            border-radius: 2px;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            overflow: hidden;
            font-family: roboto;
        }

        .loginmodal-container h1 {
            text-align: center;
            font-size: 1.8em;
            font-family: roboto;
        }

        .loginmodal-container input[type=submit] {
            width: 100%;
            display: block;
            margin-bottom: 10px;
            position: relative;
        }

        .loginmodal-container input[type=text], input[type=password] {
            height: 44px;
            font-size: 16px;
            width: 100%;
            margin-bottom: 10px;
            -webkit-appearance: none;
            background: #fff;
            border: 1px solid #d9d9d9;
            border-top: 1px solid #c0c0c0;
            /* border-radius: 2px; */
            padding: 0 8px;
            box-sizing: border-box;
            -moz-box-sizing: border-box;
        }

        .loginmodal-container input[type=text]:hover, input[type=password]:hover {
            border: 1px solid #b9b9b9;
            border-top: 1px solid #a0a0a0;
            -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
            -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
            box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
        }

        .loginmodal {
            text-align: center;
            font-size: 14px;
            font-family: 'Arial', sans-serif;
            font-weight: 700;
            height: 36px;
            padding: 0 8px;
            /* border-radius: 3px; */
            /* -webkit-user-select: none;
              user-select: none; */
        }

        .loginmodal-submit {
            /* border: 1px solid #3079ed; */
            border: 0px;
            color: #fff;
            text-shadow: 0 1px rgba(0,0,0,0.1);
            background-color: #4d90fe;
            padding: 17px 0px;
            font-family: roboto;
            font-size: 14px;
            /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
        }

        .loginmodal-submit:hover {
            /* border: 1px solid #2f5bb7; */
            border: 0px;
            text-shadow: 0 1px rgba(0,0,0,0.3);
            background-color: #357ae8;
            /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
        }

        .loginmodal-container a {
            text-decoration: none;
            color: #666;
            font-weight: 400;
            text-align: center;
            display: inline-block;
            opacity: 0.6;
            transition: opacity ease 0.5s;
        }

        .login-help{
            font-size: 12px;
        }

        #exampleModalCenter{
            position: relative;
            left: 30px;
        }




        .fa-plus-circle:hover{
            text-shadow: 0 0 11px
            rgba(33,33,33,.2);
            transform: rotateZ(180deg);
        }

        #modelsize{
            width: 800px !important;
            height: 400px;
            margin-left: -120px;

        }

        .form-group{
            width: 300px !important;
            margin-left: 40px;


        }

        #right-bar{
            position: relative;
            right: 30px;
        }
        .container{

            width: 130% !important;
            margin-top: 40px;
        }
        .py-3{
            padding-bottom: 7rem!important;
        }


        .shop-item:hover{
            box-shadow: 0 0 11px
            rgba(33,33,33,.2);
            transform: scale(1,1);
        }

        #fontOfName{
            font-size: 75%;
        }

        .filter{
            margin-top: 20px;
            margin-bottom: 20px;
            line-height: 1.5 !important;
            rgba(33,33,33,.2);
            transform: scale(1,1);
            border-radius: 5px;

        }
        .filter_shadow{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);

        }


        .form-check{
            padding-left: 2rem !important;
            padding-bottom: 2px;
        }

        #filter_title{
            position: relative;
            left: 20px;
            top: 20px
        }




        #filter-border {
            /*
                       text-shadow: 0 0 11px

            */
        }

        #cardscolor{
            background-color: aqua;
        }




        .space{
            width: 1px !important;
        }


        /*        footer*/

        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: #cc5c60;
            color: white;
            text-align: center;
            height: 30px;
            font-size: 13px;
            z-index: 1;
            height: 20px;

        }
        .footer p{
            text-align: center;
            position: relative;
            top: 5px;

        }

        .footer2{
            position:inherit;
            left: 0;
            bottom: 30px;;
            width: 100%;
            background-color: #252525;
            color: white;
            text-align: center;
            height: 155px;


        }
        /*        footer*/

        /*        social Media Icons*/
        html {
            box-sizing: border-box;
            background: #f3f3f3;
        }

        *,
        *:after,
        *:before {
            box-sizing: inherit;
        }

        .clip {
            border: 0;
            clip: rect(0 0 0 0);
            height: 1px;
            margin: -1px;
            overflow: hidden;
            padding: 0;
            position: absolute;
            width: 1px;
        }

        .svg--source {
            display: none;
        }

        .svg--icon {
            width: 100%;
            max-width: 5rem;
            height: 100%;
            max-height: 5rem;
            display: block;
            margin: 0 auto;
            fill: currentColor;
        }

        .wrapper {
            display: flex;
            padding: 1rem;
            position: fixed;
            left: 0;
            top: 15rem;


        }

        .share {
            width: 2rem;
            height: 2rem;
            float: left;
            margin: .2rem 1rem .5rem 0;
            color: #353c4a;
            border: .125rem solid #f3f3f3;
            box-shadow: 0 0 8px 0 rgba(50, 50, 50, 0.15);
            border-radius: 50%;
            transition: 250ms;
        }
        .share:last-child {
            margin-right: 0;
        }
        .share:focus {
            outline-color: inherit;
        }

        .twitter:hover, .twitter:focus {
            color: #00ACED;
            box-shadow: 0 0 24px 0 #00ACED;
        }

        .github:hover, .github:focus {
            color: #25d366;
            box-shadow: 0 0 24px 0 #25d366;
        }

        .pinterest:hover, .pinterest:focus {
            color: #F56040;
            box-shadow: 0 0 24px 0 #F56040;
        }


        .facebook:hover, .facebook:focus {
            color: #3b5998;
            box-shadow: 0 0 24px 0 #3b5998;
        }

        .google:hover, .google:focus {
            color: #dd4b39;
            box-shadow: 0 0 24px 0 #dd4b39;
        }
        .svg--icon i {
            position: fixed;
            right: 39px;

        }
        /*        social Media Icons*/




        #social_imge_position {
            position: relative;
            bottom: 25px;
            left: 6px;
        }


        @keyframes shadow-pulse
        {
            0% {
                box-shadow: 0 0 0 0px rgba(0, 0, 0, 0.2);
            }
            100% {
                box-shadow: 0 0 0 35px rgba(0, 0, 0, 0);
            }
        }

        @keyframes shadow-pulse-big
        {
            0% {
                box-shadow: 0 0 0 0px rgba(0, 0, 0, 0.1);
            }
            100% {
                box-shadow: 0 0 0 70px rgba(0, 0, 0, 0);
            }
        }

        .example-1
        {
            border-radius: 50%;
            animation: shadow-pulse 1s ;
            animation-delay: 1s;
        }
        .example-1:hover{
            animation: none;
        }

        .example-2
        {
            border-radius: 50%;
            animation: shadow-pulse 1s ;
            animation-delay: 2s;
        }
        .example-2:hover{
            animation: none;
        }

        .example-3
        {
            border-radius: 50%;
            animation: shadow-pulse 1s infinite;
            animation-delay: 3s;
        }
        .example-3:hover{
            animation: none;
        }
        .example-4
        {
            border-radius: 50%;
            animation: shadow-pulse 1s ;
            animation-delay: 4s;
        }
        .example-4:hover{
            animation: none;
        }
        .example-5
        {
            border-radius: 50%;
            animation: shadow-pulse 1s ;
            animation-delay: 5s;
        }
        .example-5:hover{
            animation: none;
        }

        /*        social Media Icons*/


        .typeing-effect{
            position: relative;
            top: 20px;
        }



        .line {
            width: 23em;
            margin: 0 auto;
            border-right: 2px solid rgb(25, 25, 25);
            font-size: 1rem!important;
            text-align: center;
            white-space: nowrap;
            overflow: hidden;transform: translateY(-50%);
            text-decoration-color: rgb(25, 25, 25);
            letter-spacing: 3px;

        }


        .anim-typewriter {
            animation: typewriter 5s steps(50) 1s 1 normal both,
            blinkTextCursor 500ms steps(50) infinite normal;
            border-right-color: transparent;
        }



        @keyframes typewriter {
            from{
                width: 0;
            }
            to {
                width: 23em;
            }
        }
        @keyframes blinkTextCursor{
            from {
                border-right-color: rgb(25, 25, 25);
            }
            to{
                border-right-color: transparent;
            }
        }

        /*2*/

        .text{

            font-size: 1rem!important;
            line-height:200%;
            color: rgb(81, 81, 81);

            text-align: center;
        }
        .text .text_q{
            letter-spacing: 3px;
        }
        .text #ghost{
            color: rgb(81, 81, 81);
            font-weight: bold;
        }

        .typeBorder{
            width: 23em;
            height: 200px !important;
            margin: 0 auto;
            border-right: 2px  solid ;
            font-size: 1rem!important;
            text-align: center;
            white-space: nowrap;
            overflow: hidden;
            transform: translateY(-50%);
            text-decoration-color: rgb(25, 25, 25);
            letter-spacing: 3px;
            animation: typewriter normal both, blinkTextCursor 1000ms infinite ;

        }


        @keyframes blinkTextCursor{
            from {
                border-right-color: rgb(25, 25, 25);
            }
            to{
                border-right-color: transparent;
            }
        }

        /*        typing effect*/

        .Pagination_position{
            position: relative;
            left: 54rem;
            bottom: 5rem;

        }


    </style>










</head>
<body>



<c:import url="/header"/>



<!-- Modal -->

<!--    Carousel-->

<div class="container" id="carousel_id" style="width: 71rem !important; ">

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://www.ox.ac.uk/sites/files/oxford/styles/ow_large_feature/public/field/field_image_main/b_AllSoulsquad.jpg?itok=N1GzQbrQ" class="d-block w-100" alt="..." style="height: 350; ">
            </div>
            <div class="carousel-item">
                <img src="https://www.uni-bonn.de/the-university/images/unilebenslider2.jpg" class="d-block w-100" style="height: 350;" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://www.du.edu/sites/g/files/lmucqz251/files/hero-image%20%281%29.jpg" class="d-block w-100" style="height: 350;" alt="..." >
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

</div>

<div class="typeing-effect">
    <div class="text">
     <spam id="type-eff" class="text_q"> What are you looking for ?</spam> <span id="ghost"></span><span class="typeBorder"></span>
    </div>
    <%--<p class="line anim-typewriter" id="type-eff">Which University are you looking for ?</p>--%>
</div>
<!--    Carousel-->

<div class="wrapper">
    <div class="connect">

        <a href="" class="share twitter example-1">
            <svg role="presentation" class="svg--icon">
                <i class="fab fa-twitter" id="social_imge_position"></i>
            </svg>
            <span class="clip">TWITTER</span>
        </a>
        <br>
        <a href="" rel="author" class="share google example-2">
            <svg role="presentation" class="svg--icon">
                <i class="far fa-envelope" id="social_imge_position" ></i>
                <span class="clip">GOOGLE +</span>
            </svg>
        </a>
        <br>
        <a href="" class="share github example-3">
            <svg role="presentation" class="svg--icon">
                <i class="fab fa-whatsapp " id="social_imge_position" style=" margin-bottom: 5px!important; "></i>
                <span class="clip">GITHUB</span>
            </svg>
        </a>

        <br>
        <a href="" rel="author" class="share facebook example-4">
            <svg role="presentation" class="svg--icon">
                <i class="fab fa-facebook-f" id="social_imge_position" style="left: 8px; "></i>
                <span class="clip">FACEBOOK</span>
            </svg>
        </a>
        <br>
        <a href="" class="share  pinterest example-5">
            <svg role="presentation" class="svg--icon">
                <i class="fab fa-instagram" id="social_imge_position"></i>
                <span class="clip">PINTEREST</span>
            </svg>
        </a>


    </div>
</div>

<div style="background-color: #F8F9FA;margin-left: 20px;">
    <hr>
    <div class="container"  id="card-marg">
        <div class="row">

            <div class="col-xs-3 d-none d-lg-block filter">

                <div class="card filter_shadow" style="width: 18rem;" id="filter-border">
                    <div class="form-check">

                        <strong>Subjects</strong><br>
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Accounting & Finance
                        </label>
                    </div>


                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Architecture, Building
                        </label>
                    </div>

                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            English Language
                        </label>
                    </div>

                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Mandarin (Chinese Language)
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Business, Management
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Law
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Humanities & Social Sciences
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Default radio
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Sports Science
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Applied, Pure Sciences
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Beauty, Personal Care
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Health and Medicine
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Mass Communication & Media
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            MBA
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Default radio
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Education and Teaching
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Aviation
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Hotel Management & Hospitality
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Agriculture Studies
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Creative Arts & Design
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Engineering
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Automotive Technology
                        </label>
                    </div>

                    <strong id="filter_title">Subjects</strong><br>

                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Foundation / Pre-U / A-level
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Diploma
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Advanced Diploma
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Bachelor's Degree
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Associate Degree
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Postgraduate Certificate
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Postgraduate Diploma
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Master's Degree
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Doctoral Degree (PhD)
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Certificate
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Professional and Vocational
                        </label>
                    </div>
                </div>

            </div>


            <div id="page" class="col py-3  row" >
                <c:forEach items="${AllUniList}" var="universityDAO" varStatus="myIndex">


                    <div class="col-xs-4 list-group" id="card-mar" style="width: 12.5rem;" id="cards" >
                        <div class="shop-item">
                            <div class="info">
                                <div class="row">
                                    <div class="photo">
                                        <img class="card-img-top" alt="..." height="230px"  style="  object-fit: contain;" src="${universityDAO.uni_logo}" class="img-responsive" alt="a"/>

                                    </div>



                                    <p class="price col-md-12 price-text-color">${universityDAO.uni_name}</p>
                                    <div class="price col-md-12 price-text">
                                        <p class="uni_location" style="height: 2rem; margin-top: 7px;">${universityDAO.uni_location}</p>
                                        <p>
                                            <c:choose>
                                                <c:when test="${universityDAO.uni_type == 'Private'}">
                                            <spam  class="badge badge-pill badge-secondary" >${universityDAO.uni_type}</spam>
                                                </c:when>
                                                <c:otherwise>

                                                    <spam  class="badge badge-pill badge-warning" >${universityDAO.uni_type}</spam>
                                                </c:otherwise>
                                            </c:choose>
                                            <spam  class="badge badge-pill badge-info">${universityDAO.uni_num_of_courses} courses</spam></p>
                                    </div>

                                </div>

                                <div class="clearfix">
                                </div>
                            </div>

                        </div>
                    </div>

                </c:forEach>



            </div>
        </div>
        <div class="col-3 Pagination_position">

            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item" id="previous-page"><a class="page-link text-primary"  aria-hidden=true>Previous</a></li>

                </ul>
            </nav>


        </div>
    </div>
    <hr>
</div>




<div class="footer2">
    <ul class=>Contact us

    </ul>
    <p style="color:#fff "></p>
</div>

<div class="footer">
    <p >© Ammar3rshan. All Rights Reserved.</p>
</div>



</body>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.4.0.js"
        integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">





    (function($){
        $.fn.ghosttyper = function(options){
            var settings = $.extend({},$.fn.ghosttyper.defaults,options);
            var elem = $(this);
            var index = 0;
            settings.messageCount = settings.messages.length;
            typing(0, false);
            return this;

            function typing(slicer, del) {
                setTimeout(function () {
                    slicer+= (del===true) ? (-1) : (1);
                    elem.text(settings.messages[index].slice(0, slicer));
                    if (slicer === 0) {
                        // When the whole round is completed, and sliced length displayed is reduced to 0
                        del = false; // Change the direction
                        index++; // Increment the index cyclically
                        if (index == settings.messageCount) {
                            index = 0;
                            // Checking if the repeat option is turned on
                            if(settings.repeat===false){
                                if(settings.callback) return settings.callback();
                                return;
                            }
                        }
                    }
                    if (slicer == settings.messages[index].length) {
                        del = true;
                        setTimeout(function () {
                            typing(slicer, del);
                        }, settings.timePause);
                    } else {
                        typing(slicer, del);
                    }
                }, del ? settings.timeDelete : settings.timeWrite);
            }
        };
        $.fn.ghosttyper.defaults = {
            messages: null,
            messageCount: 0,
            elem: null,
            timeWrite: 100,
            timeDelete: 50,
            timePause: 500,
            repeat: true,
            callback: undefined
        };
    })(jQuery);


    $("#ghost").ghosttyper({
        messages: ['University', 'English Course', 'information','Our Consultation','Or you just like the Website'],
        timeWrite: 100,
        timeDelete: 50,
        timePause: 1000
    });

    $(document).ready(function(){
        $('#search').hover(function(){
            $('.menu-item').addClass('hide-item')
            $('.search-form').addClass('active')
            $('.close').addClass('active')
            $('#search').hide()
            $('#search').hide()
            $('#setting').hide()
        })

        $('#type-eff').hover(function(){
            $('.menu-item').addClass('hide-item')
            $('.search-form').addClass('active')
            $('.close').addClass('active')
            $('#search').hide()
            $('#search').hide()
            $('#setting').hide()
        })

        $('.close').hover(function(){
            $('.menu-item').removeClass('hide-item')
            $('.search-form').removeClass('active')
            $('.close').removeClass('active')
            $('#search').show()
            $('#setting').show()
        })

    })


    // pangnition
    'use strict';

    var numberOfItems = $('#page .list-group').length; // Get total number of the items that should be paginated
    var limitPerPage = 12; // Limit of items per each page
    $('#page .list-group:gt(' + (limitPerPage - 1) + ')').hide(); // Hide all items over page limits (e.g., 5th item, 6th item, etc.)
    var totalPages = Math.round(numberOfItems / limitPerPage); // Get number of pages
    $(".pagination").append("<li class='current-page active page-item'><a class= 'page-link' href='javascript:void(0)'>" + 1 + "</a></li>"); // Add first page marker

    // Loop to insert page number for each sets of items equal to page limit (e.g., limit of 4 with 20 total items = insert 5 pages)
    for (var i = 2; i <= totalPages; i++) {
        $(".pagination").append("<li class='current-page page-item'><a class= 'page-link' href='javascript:void(0)'>" + i + "</a></li>"); // Insert page number into pagination tabs
    }

    // Add next button after all the page numbers
    $(".pagination").append("<li class='page-item' id='next-page' ><a class='page-link'href='javascript:void(0)' Page navigation example=Next><span aria-hidden=true>Next</span></a></li>");

    // Function that displays new items based on page number that was clicked
    $(".pagination li.current-page").on("click", function() {
        // Check if page number that was clicked on is the current page that is being displayed
        if ($(this).hasClass('active')) {
            return false; // Return false (i.e., nothing to do, since user clicked on the page number that is already being displayed)
        } else {
            var currentPage = $(this).index(); // Get the current page number
            $(".pagination li").removeClass('active'); // Remove the 'active' class status from the page that is currently being displayed
            $(this).addClass('active'); // Add the 'active' class status to the page that was clicked on
            $("#page .list-group").hide(); // Hide all items in loop, this case, all the list groups
            var grandTotal = limitPerPage * currentPage; // Get the total number of items up to the page number that was clicked on

            // Loop through total items, selecting a new set of items based on page number
            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
                $("#page .list-group:eq(" + i + ")").show(); // Show items from the new page that was selected
            }
        }

    });

    // Function to navigate to the next page when users click on the next-page id (next page button)
    $("#next-page").on("click", function() {
        var currentPage = $(".pagination li.active").index(); // Identify the current active page
        // Check to make sure that navigating to the next page will not exceed the total number of pages
        if (currentPage === totalPages) {
            return false; // Return false (i.e., cannot navigate any further, since it would exceed the maximum number of pages)
        } else {
            currentPage++; // Increment the page by one
            $(".pagination li").removeClass('active'); // Remove the 'active' class status from the current page
            $("#page .list-group").hide(); // Hide all items in the pagination loop
            var grandTotal = limitPerPage * currentPage; // Get the total number of items up to the page that was selected

            // Loop through total items, selecting a new set of items based on page number
            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
                $("#page .list-group:eq(" + i + ")").show(); // Show items from the new page that was selected
            }

            $(".pagination li.current-page:eq(" + (currentPage - 1) + ")").addClass('active'); // Make new page number the 'active' page
        }
    });

    // Function to navigate to the previous page when users click on the previous-page id (previous page button)
    $("#previous-page").on("click", function() {
        var currentPage = $(".pagination li.active").index(); // Identify the current active page
        // Check to make sure that users is not on page 1 and attempting to navigating to a previous page
        if (currentPage === 1) {
            return false; // Return false (i.e., cannot navigate to a previous page because the current page is page 1)
        } else {
            currentPage--; // Decrement page by one
            $(".pagination li").removeClass('active'); // Remove the 'activate' status class from the previous active page number
            $("#page .list-group").hide(); // Hide all items in the pagination loop
            var grandTotal = limitPerPage * currentPage; // Get the total number of items up to the page that was selected

            // Loop through total items, selecting a new set of items based on page number
            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
                $("#page .list-group:eq(" + i + ")").show(); // Show items from the new page that was selected
            }

            $(".pagination li.current-page:eq(" + (currentPage - 1) + ")").addClass('active'); // Make new page number the 'active' page
        }
    });
    // pangnition

    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })

</script>


</html>

