<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="en" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="index,nofollow" />
    <meta name="copyright" content="Copyright © 2015" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="google" content="notranslate" />
    <title>WebApp Chatting - assignment of campus Technoloy WEB</title>

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link rel="stylesheet" href="dist/css/style.css">
     
</head>
<body class="body-chat-box">
    
    <?php
    if(isset($_POST['my_id']) && isset($_POST['partner_id'])){
        $my_id       = $_POST['my_id'];         // mengambil id saya
        $partner_id  = $_POST['partner_id'];    // mengambil id partner

    }
    ?>

     <section class="box-chat">
        <header class="header-chat">
            You're chatting with <strong><?php echo $partner_id;?></strong>
        </header>
        <div class="body-chat">
            <div id="chat">
                <div class="stream" id="cstream"></div>
            </div>
            <div id="dataHelper" last-id=""></div>
        </div>
        <div class="footer-chat">
            <form method="post" id="fieldMessage" action="">
                <div class="box-text">
                    <textarea name="msg" id="msg-min"></textarea>
                </div>
                <input type="hidden" name="my_id" value="<?php echo $my_id;?>">
                <input type="hidden" name="partner_id" value="<?php echo $partner_id;?>">
                <input type="submit" value="" id="send-message">
            </form>
         </div>
    </section>

    <script src="dist/js/jquery.min.js"></script>
    <script src="dist/js/moment.min.js"></script>
    <script src="dist/js/livestamp.js"></script>
    <script type="text/javascript">
        $(document).keyup(function(e){

            if(e.keyCode == 13){
                if($('#fieldMessage textarea').val().trim() == ""){
                    $('#fieldMessage textarea').val('');
                }else{
                    $('#fieldMessage textarea').attr('readonly', 'readonly');
                    $('#send-message').addClass('btn-disable').attr('disabled', 'disabled'); 
                    sendMsg();
                }       
            }

            // ketika 
        });
        
        $(document).ready(function(){
            $('#msg-min').focus();
            $('#fieldMessage').submit(function(e){
                $('#fieldMessage textarea').attr('readonly', 'readonly');
                $('#send-message').addClass('btn-disable').attr('disabled', 'disabled');   // Disable submit button
                sendMsg();
                e.preventDefault(); 
            });
        });

        function resizeBox() {
            var heighBoxChat    = $('.box-chat').height();
            var heighHeaderChat = $('.header-chat').outerHeight();
            var heighFooterChat = $('.footer-chat').outerHeight();
            var HeighbodyChat   = heighBoxChat - ( heighHeaderChat + heighFooterChat);
            $('.body-chat').css('height', + HeighbodyChat + 'px');
        }

        resizeBox();
      
        $(window).resize(function(){
            resizeBox();
        });

 
        function sendMsg(){
        $.ajax({
            type: 'post',
            url: 'chat-connection.php?rq=new',
            data: $('#fieldMessage').serialize(),
            dataType: 'json',
            success: function(rsp){
                    $('#fieldMessage textarea').removeAttr('readonly');
                    $('#send-message').removeClass('btn-disable').removeAttr('disabled'); // Enable submit button
                    if(parseInt(rsp.status) == 0){
                        alert(rsp.msg);
                    }else if(parseInt(rsp.status) == 1){
                        $('#fieldMessage textarea').val('');
                        $('#fieldMessage textarea').focus();
                        //$design = '<div>'+rsp.msg+'<span class="time-'+rsp.lid+'"></span></div>';
                        $design = '<div class="float-fix">'+
                                        '<div class="m-rply">'+
                                            '<div class="msg-bg">'+
                                                '<div class="msgA">'+
                                                    rsp.msg+
                                                '</div>'+
                                            '</div>'+
                                            '<div class="time-msg">'+
                                                '<div class="msg-time time-'+rsp.lid+'"></div>'+
                                                '<div class="myrply-i"></div>'+
                                            '</div>'+
                                        '</div>'+
                                    '</div>';
                        $('#cstream').append($design);

                        $('.time-'+rsp.lid).livestamp();
                        $('#dataHelper').attr('last-id', rsp.lid);
                        $('#chat').scrollTop($('#cstream').height());
                    }
                }
            });
    }
    function checkStatus(){
        $partner_id = '<?php echo $partner_id; ?>';
        $my_id = '<?php echo $my_id; ?>';
        $.ajax({
            type: 'post',
            url: 'chat-connection.php?rq=msg',
            data: {partner_id: $partner_id, my_id: $my_id, lid: $('#dataHelper').attr('last-id')},
            dataType: 'json',
            cache: false,
            success: function(rsp){
                    if(parseInt(rsp.status) == 0){
                        return false;
                    }else if(parseInt(rsp.status) == 1){
                        getMsg();
                    }
                }
            }); 
    }

    // Check for latest message
    setInterval(function(){checkStatus();}, 200);

    function getMsg(){
        $partner_id = '<?php echo $partner_id; ?>';
        $my_id = '<?php echo $my_id; ?>';
        $.ajax({
            type: 'post',
            url: 'chat-connection.php?rq=NewMsg',
            data:  {partner_id: $partner_id, my_id: $my_id},
            dataType: 'json',
            success: function(rsp){
                    if(parseInt(rsp.status) == 0){
                        //alert(rsp.msg);
                    }else if(parseInt(rsp.status) == 1){
                        $design = '<div class="float-fix">'+
                                        '<div class="f-rply">'+
                                            '<div class="msg-bg">'+
                                                '<div class="msgA">'+
                                                    rsp.msg+
                                                '</div>'+
                                            '</div>'+
                                            '<div class="time-msg">'+
                                                '<div class="msg-time time-'+rsp.lid+'"></div>'+
                                                '<div class="myrply-f"></div>'+
                                            '</div>'+
                                        '</div>'+
                                    '</div>';
                        $('#cstream').append($design);
                        $('#chat').scrollTop ($('#cstream').height());
                        $('.time-'+rsp.lid).livestamp();
                        $('#dataHelper').attr('last-id', rsp.lid);  
                    }
                }
        });
    }
    </script>
</body>
</html>