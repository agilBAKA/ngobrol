<?php
// Connection
$conn = mysql_connect("localhost", 'root', '');
$db = mysql_select_db("ngobrolApp", $conn);
$json = '';
if(isset($_GET['rq'])):
    switch($_GET['rq']):
        case 'new':
            $msg = $_POST['msg'];
            $my_id = $_POST['my_id'];
            $partner_id = $_POST['partner_id'];
            if(empty($msg)){
                //$json = array('status' => 0, 'msg'=> 'Enter your message!.');
            }else{
                $qur = mysql_query('insert into msg set `to`="'.$partner_id.'", `from`="'.$my_id.'", `msg`="'.$msg.'", `status`="1"');
                if($qur){
                    $qurGet = mysql_query("select * from msg where id='".mysql_insert_id()."'");
                    while($row = mysql_fetch_array($qurGet)){
                        $json = array('status' => 1, 'msg' => $row['msg'], 'lid' => mysql_insert_id(), 'time' => $row['time']);
                    }
                }else{
                    $json = array('status' => 0, 'msg'=> 'Unable to process request.');
                }
            }
        break;
        case 'msg':
            $my_id = $_POST['my_id'];
            $partner_id = $_POST['partner_id'];
            $lid = $_POST['lid'];
            if(empty($my_id)){

            }else{
                //print_r($_POST);
                $qur = mysql_query("select * from msg where `to`='$my_id' && `from`='$partner_id' && `status`=1");
                if(mysql_num_rows($qur) > 0){
                    $json = array('status' => 1);
                }else{
                    $json = array('status' => 0);
                }
            }
        break;
        case 'NewMsg':
            $my_id = $_POST['my_id'];
            $partner_id = $_POST['partner_id'];

            $qur = mysql_query("select * from msg where `to`='$my_id' && `from`='$partner_id' && `status`=1 order by id desc limit 1");
            while($rw = mysql_fetch_array($qur)){
                $json = array('status' => 1, 'msg' => '<div>'.$rw['msg'].'</div>', 'lid' => $rw['id'], 'time'=> $rw['time']);
            }
            // update status
            $up = mysql_query("UPDATE `msg` SET  `status` = '0' WHERE `to`='$my_id' && `from`='$partner_id'");
        break;
    endswitch;
endif;

@mysql_close($conn);
header('Content-type: application/json');
echo json_encode($json);
?>