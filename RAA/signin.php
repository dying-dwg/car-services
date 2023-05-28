<?php

    session_start();
    include '../connect.php'; 
    
    $login = mysqli_real_escape_string($dp, $_POST['login']);
    $_POST['password'] = mysqli_real_escape_string($dp, $_POST['password']);
    
    $password = md5($_POST['password']);

    $check_user = mysqli_query($dp, "SELECT * FROM `users` WHERE `login` = '$login' AND `password` = '$password'");
    if (mysqli_num_rows($check_user) > 0) {

        $user = mysqli_fetch_assoc($check_user);

        $_SESSION['user'] = [
            "id" => $user['id'],
            "full_name" => $user['full_name'],
             "login" => $user['login'],
            "email" => $user['email'],
            "date" => $user['date']
        ];

        header('Location: ../pages/auth.php');

    } else {
        $_SESSION['message'] = 'Не верный логин или пароль';
        header('Location: ../pages/auth.php');
    }
    ?>

