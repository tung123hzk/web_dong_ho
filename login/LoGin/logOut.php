<?php
session_start();
unset($_SESSION['loGin']);
header("Location: ../../index.php");
exit();