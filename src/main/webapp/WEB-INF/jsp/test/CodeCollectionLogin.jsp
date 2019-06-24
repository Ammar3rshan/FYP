<%--
  Created by IntelliJ IDEA.
  User: Ammar-Bashrahail
  Date: 5/5/2019
  Time: 12:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>Title</title>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

    <style type="text/css">

        .card {
            position: fixed;
            top: 30%;

            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }


        .divider-text {
            position: relative;
            text-align: center;
            margin-top: 15px;
            margin-bottom: 15px;
        }
        .divider-text span {
            padding: 7px;
            font-size: 12px;
            position: relative;
            z-index: 2;
        }
        .divider-text:after {
            content: "";
            position: absolute;
            width: 100%;
            border-bottom: 1px solid #ddd;
            top: 55%;
            left: 0;
            z-index: 1;
        }

        .btn-facebook {
            background-color: #405D9D;
            color: #fff;
        }
        .btn-twitter {
            background-color: #42AEEC;
            color: #fff;
        }
        .container{
            height: 90%;
            display: flex;
            justify-content: center;
            flex-direction: row;
        }

    </style>


</head>
<body>






<div class="container">


    <div class="card bg-light">
        <article class="card-body mx-auto" style="max-width: 200x;">


            <p class="divider-text">
                <span class="bg-light">Login</span>
            </p>
            <form action="get_name" method="post">

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-user"></i> </span>
                    </div>
                    <input name="user_name" class="form-control" placeholder="User Name" type="text">
                </div> <!-- form-group// -->





                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fas fa-id-card"></i> </span>
                    </div>
                    <input name="user_student_id" class="form-control" placeholder=" Student ID" type="text">
                </div>


                <div class="form-group">
                    <a href="/shoppingCards"><button  type="submit" class="btn btn-primary btn-block"> LOGIN </button> </a>
                </div> <!-- form-group// -->
            </form>
        </article>
    </div> <!-- card.// -->

</div>
<!--container end.//-->





</body>

<script>

    function logou() {
        $.get('test_logout')
    }


</script>

</html>

