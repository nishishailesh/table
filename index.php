<?php
session_name('sn_'.rand(1000000000,1999999999));
session_start();
require_once 'base/common.php';
require_once 'config.php';
#require_once 'project_common.php';
echo '        <link rel="stylesheet" href="project_common.css">
          <script src="project_common.js"></script>';
          
head($GLOBALS['application_name']);
login();
tail();
print_r($_POST);
?>
