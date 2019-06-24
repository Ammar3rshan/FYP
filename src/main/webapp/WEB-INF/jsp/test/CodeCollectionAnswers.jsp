<%--
  Created by IntelliJ IDEA.
  User: Ammar-Bashrahail
  Date: 5/5/2019
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            width: 40%;
            height: 90%;
            position: fixed;
            top: 5%;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            overflow: auto;
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
        /*#hide_span{*/
            /*font-size: 0px;*/
            /*color: white;*/

        /*}*/

    </style>


</head>
<body>






<div class="container">


    <div class="card bg-light">
        <article class="card-body" >


            <p class="divider-text">
                <span class="bg-light">5 Questions</span>
            </p>
            <form action="get_user_answers" method="post">




                <div class="form-group">
                    <h5><spam style="color: rgb(123, 124, 124)">Q1:</spam> Write code to check a String is palindrome or not?</h5>
                    <label for="comment">Answer:</label>
                    <textarea name="answer_1" class="form-control click1 textar1" rows="5" id="KeybordPress"></textarea>
                </div>

                <div class="form-group">
                    <h5><spam style="color: rgb(123, 124, 124)">Q2:</spam> Write a method which will remove any given character from a String?</h5>
                    <label for="comment">Answer:</label>
                    <textarea name="answer_2" class="form-control click2 textar2" rows="5" id="KeybordPress2"></textarea>
                </div>

                <div class="form-group">
                    <h5><spam style="color: rgb(123, 124, 124)">Q3:</spam> Print all permutation of String both iterative and Recursive way?</h5>
                    <label for="comment">Answer:</label>
                    <textarea name="answer_3" class="form-control click3 textar3" rows="5" id="KeybordPress3"></textarea>
                </div>

                <div class="form-group">
                    <h5><spam style="color: rgb(123, 124, 124)">Q4:</spam> Write a function to find out longest palindrome in a given string?</h5>
                    <label for="comment">Answer:</label>
                    <textarea name="answer_4" class="form-control click4 textar4" rows="5" id="KeybordPress4"></textarea>
                </div>

                <div class="form-group">
                    <h5><spam style="color: rgb(123, 124, 124)">Q5:</spam> How to find the first non repeated character of a given String?</h5>
                    <label for="comment">Answer:</label>
                    <textarea name="answer_5" class="form-control click5 textar5" rows="5" id="comment"></textarea>
                </div>




                <div class="form-group">
                    <a id="button-a"><button class="btn btn-primary btn-block"> Submit  </button> </a>
                </div> <!-- form-group// -->



                <input type="hidden" name="answer_1_clicks" id="hidenInputForClicks1">
                <input type="hidden" name="answer_2_clicks" id="hidenInputForClicks2">
                <input type="hidden" name="answer_3_clicks" id="hidenInputForClicks3">
                <input type="hidden" name="answer_4_clicks" id="hidenInputForClicks4">
                <input type="hidden" name="answer_5_clicks" id="hidenInputForClicks5">



                <input type="hidden" name="answer_1_delets" id="hidenInputForDelets1">
                <input type="hidden" name="answer_2_delets" id="hidenInputForDelets2">
                <input type="hidden" name="answer_3_delets" id="hidenInputForDelets3">
                <input type="hidden" name="answer_4_delets" id="hidenInputForDelets4">
                <input type="hidden" name="answer_5_delets" id="hidenInputForDelets5">

            </form>
        </article>
    </div> <!-- card.// -->

    <span id="hide_span">Click Me1 <span typ="hiden"id="count1">0</span></span>
    <span id="hide_span" >Click Me2 <span typ="hiden"id="count2">0</span></span>
    <span id="hide_span">Click Me3 <span typ="hiden"id="count3">0</span></span>
    <span id="hide_span">Click Me4 <span typ="hiden"id="count4">0</span></span>
    <span id="hide_span">Click Me5 <span typ="hiden"id="count5">0</span></span>


    <span id="hide_span">Delet Me1 <span id="count12">0</span></span>
    <span id="hide_span">Delet Me2 <span id="count22">0</span></span>
    <span id="hide_span">Delet Me3 <span id="count32">0</span></span>
    <span id="hide_span">Delet Me4 <span id="count42">0</span></span>
    <span id="hide_span">Delet Me5 <span id="count52">0</span></span>


</div>
<!--container end.//-->

<button>Sweet Alert!</button>

</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.4.0.js"
        integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>

    var alerted = localStorage.getItem('alerted') || '';
    if (alerted != 'yes') {
    swal("Good job!", "success");
        localStorage.setItem('alerted','yes');
    }






    document.addEventListener('DOMContentLoaded', init);

    // Q1
    function init(){
        var txt = document.getElementById('KeybordPress');
        txt.addEventListener('keydown', anyKey);
    }
var backspace =0 ;
    var deletTimes=0 ;
    function anyKey(ev){
        //log( ev.type, ev.target);
        var target = ev.currentTarget;
        var tag = target.tagName;
        var char = ev.char || ev.charCode || ev.which || ev.keyCode;
        //log(char, tag);
        var s = String.fromCharCode(char);
        //log(s);

        // if (char == 8){
        //
        //     console.log(deletTimes += 1 );
        // }

        switch(char){
            case 8:
                console.log(deletTimes += 1 );
                break;
            case 40:
                log('DOWN');
                break;
        }
        document.getElementById('KeybordPress').placeholder=deletTimes;
        // var total = deletTimes;
        // console.log(deletTimes)
    }

// Q2

    // recognizing all clicks


    // recognizing clicks in text1

    $button1 =document.querySelector('.textar1');
    $span1 = document.querySelector('#count1');
    $input1 = document.querySelector('#hidenInputForClicks1');
    function increment1(){
        $span1.innerHTML++;
        var a = document.querySelector('#count1').innerHTML;
        $input1.value=a;
    }
    $button1.addEventListener('click',increment1);




    // recognizing clicks in text2

    $button2 =document.querySelector('.textar2');
    $span2 = document.querySelector('#count2');
    $input2 = document.querySelector('#hidenInputForClicks2');
    function increment2(){
        $span2.innerHTML++;
        var a = document.querySelector('#count2').innerHTML;
        $input2.value=a;
    }
    $button2.addEventListener('click',increment2);


    // recognizing clicks in text3

    $button3 =document.querySelector('.textar3');
    $span3 = document.querySelector('#count3');
    $input3 = document.querySelector('#hidenInputForClicks3');
    function increment3(){
        $span3.innerHTML++;
        var a = document.querySelector('#count3').innerHTML;
        $input3.value=a;
    }
    $button3.addEventListener('click',increment3);


    // recognizing clicks in text4
    $button4 =document.querySelector('.textar4');
    $span4 = document.querySelector('#count4');
    $input4 = document.querySelector('#hidenInputForClicks4');
    function increment4(){
        $span4.innerHTML++;
        var a = document.querySelector('#count4').innerHTML;
        $input4.value=a;
    }
    $button4.addEventListener('click',increment4);

    // recognizing clicks in text5

    $button5 =document.querySelector('.textar5');
    $span5 = document.querySelector('#count5');
    $input5= document.querySelector('#hidenInputForClicks5');
    function increment5(){
        $span5.innerHTML++;
        var a = document.querySelector('#count5').innerHTML;
        $input5.value=a;
    }
    $button5.addEventListener('click',increment5);

    // recognizing all clicks



    // recognizing all delet

    $button12 =document.querySelector('.textar1');
    $span12 = document.querySelector('#count12');
    $input12 = document.querySelector('#hidenInputForDelets1');
    function increment12(ev){
        var char12 = ev.char || ev.charCode || ev.which || ev.keyCode;
        var s = String.fromCharCode(char12);
        switch(char12){
            case 8:
                $span12.innerHTML++;
                var a = document.querySelector('#count12').innerHTML;
                $input12.value=a;
                break;
            case 46:
                $span12.innerHTML++;
                var a = document.querySelector('#count12').innerHTML;
                $input12.value = a;
                break;
        }

    }
    $button12.addEventListener('keydown',increment12);


    $button22 =document.querySelector('.textar2');
    $span22 = document.querySelector('#count22');
    $input22 = document.querySelector('#hidenInputForDelets2');
    function increment22(ev){
        var char22 = ev.char || ev.charCode || ev.which || ev.keyCode;
        var s = String.fromCharCode(char22);
        switch(char22){
            case 8:
                $span22.innerHTML++;
                var a = document.querySelector('#count22').innerHTML;
                $input22.value=a;
                break;
            case 46:
                $span22.innerHTML++;
                var a = document.querySelector('#count22').innerHTML;
                $input22.value=a;
                break;
        }

    }
    $button22.addEventListener('keydown',increment22);

    $button32 =document.querySelector('.textar3');
    $span32 = document.querySelector('#count32');
    $input32 = document.querySelector('#hidenInputForDelets3');
    function increment32(ev){
        var char32 = ev.char || ev.charCode || ev.which || ev.keyCode;
        var s = String.fromCharCode(char32);
        switch(char32){
            case 8:
                $span32.innerHTML++;
                var a = document.querySelector('#count32').innerHTML;
                $input32.value=a;
                break;
            case 46:
                $span32.innerHTML++;
                var a = document.querySelector('#count32').innerHTML;
                $input32.value=a;
                break;
        }

    }
    $button32.addEventListener('keydown',increment32);

    $button42 =document.querySelector('.textar4');
    $span42 = document.querySelector('#count42');
    $input42 = document.querySelector('#hidenInputForDelets4');
    function increment42(ev){
        var char42 = ev.char || ev.charCode || ev.which || ev.keyCode;
        var s = String.fromCharCode(char42);
        switch(char42){
            case 8:
                $span42.innerHTML++;
                var a = document.querySelector('#count42').innerHTML;
                $input42.value=a;
                break;
            case 46:
                $span42.innerHTML++;
                var a = document.querySelector('#count42').innerHTML;
                $input42.value=a;
                break;
        }

    }
    $button42.addEventListener('keydown',increment42);


    // recognizing delet 5

    $button6 =document.querySelector('.textar5');
    $span6 = document.querySelector('#count52');
    $input6 = document.querySelector('#hidenInputForDelets5');
    function increment52(ev){
        var char52 = ev.char || ev.charCode || ev.which || ev.keyCode;
        var s = String.fromCharCode(char52);
        switch(char52){
            case 8:
                $span6.innerHTML++;
                var a = document.querySelector('#count52').innerHTML;
                $input6.value=a;
                break;
            case 46:
                $span6.innerHTML++;
                var a = document.querySelector('#count52').innerHTML;
                $input6.value=a;
                break;
        }

    }
    $button6.addEventListener('keydown',increment52);












</script>







</html>

