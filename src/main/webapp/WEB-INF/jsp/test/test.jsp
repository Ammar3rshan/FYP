<%--
  Created by IntelliJ IDEA.
  User: Ammar-Bashrahail
  Date: 5/1/2019
  Time: 5:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!doctype html>
<html>
<head>

    <title>jQuery ghost-typer.js Demo</title>

    <style>
        .text{
            padding: 50px;
            margin: 50px;
            font-size: 30px;
            line-height:200%;
            color: rgb(81, 81, 81);
            letter-spacing: 3px;
        }
        .text #ghost{
            color: rgb(81, 81, 81);
            font-weight: bold;
            letter-spacing: 3px;
            letter-spacing: 5px;
        }

        .typeBorder{
            width: 23em;
            height: 200px !important;
            margin: 0 auto;
            border-right: 2px  solid ;
            font-size: 1.5rem!important;
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


    </style>
</head>
<body>




<div class="text">
    Which University are you looking for ? <span id="ghost"></span><span class="typeBorder"></span>
</div>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!--	<script src="ghost-typer.js"></script>-->
<script>
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
        messages: ['MMU', 'UTM', 'Taylor`s','Limkokking'],
        timeWrite: 100,
        timeDelete: 50,
        timePause: 1000
    });


</script>
</body>


</html>
