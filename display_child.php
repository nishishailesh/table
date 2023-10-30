<?php
//$GLOBALS['nojunk']='';
require_once 'base/verify_login.php';
require_once 'single_table_edit_common.php';
    ////////User code below/////////////////////
echo '        <link rel="stylesheet" href="project_common.css">
          <script src="project_common.js"></script>';   
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
$user=get_user_info($link,$_SESSION['login']);
//$auth=explode(',',$user['authorization']);
//print_r($auth);


/*
Array
(
    [action] => child
    [session_name] => sn_1368472133
    [fname] => resident_id
    [fvalue] => 4
    [tname] => attendance
)
*/
$msql='select id from `'.$_POST['mname'].'` 
        where id=\''.$_POST['fvalue'].'\' order by id desc';

echo '<h2 class="text-success">'.$_POST['mname'].' with  id ='.$_POST['fvalue'].'</h2>';
//select_sql($link,$_POST['mname'],$msql,array(),$edit='no',$delete='no');
select_sql($link,$_POST['mname'],$msql,array(),$edit='no',$delete='no');
       
        
$sql='select id from `'.$_POST['tname'].'` 
        where `'.$_POST['fname'].'`=\''.$_POST['fvalue'].'\' order by id desc';
        
//echo $sql;
echo '<h2 class="text-success">'.$_POST['tname'].' with '.$_POST['fname'].'='.$_POST['fvalue'].'</h2>';
//select_sql($link,$_POST['tname'],$sql,array(),$edit='no',$delete='no');
select_sql($link,$_POST['tname'],$sql);
//////////////user code ends////////////////
tail();

echo '<pre>';print_r($_POST);print_r($_FILES);echo '</pre>';
//////////////Functions///////////////////////

?>
