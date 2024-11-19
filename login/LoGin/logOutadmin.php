<?php
session_start();

unset($_SESSION['loGinAdmin']);
header("Location: loGin.php");
exit();