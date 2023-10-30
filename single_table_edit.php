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
//echo strftime("%Y-%m-%d %h:%m:%s");

echo '<div class="two_column_one_by_two">';
    echo '<div>';
        list_available_tables($link);
    echo '</div><div>';
        manage_stf($link,$_POST,$show_crud='yes',$extra=array(),$order_by=' order by  id desc ');
        echo '<div id=element_for_child>Child Data</div>';
    echo '</div>';
echo '</div>';


//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);print_r($_FILES);echo '</pre>';
//////////////Functions///////////////////////

?>

