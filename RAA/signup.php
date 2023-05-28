<?php

    session_start();
    include '../connect.php'; 

    function convert($text){
        $text = trim($text);
        $text = stripcslashes($text);
        $text = strip_tags($text);
        $text = htmlspecialchars($text);
        return $text;
    }

    function checklength($text, $min, $max){
        $check = (mb_strlen($text) >= $min && mb_strlen($text) <= $max);
        return $check;
    }

    $full_name = convert($_POST['full_name']);
    $login = convert($_POST['login']);
    $email = convert($_POST['email']);
    $password = convert($_POST['password']);
    $password_confirm = convert($_POST['password_confirm']);
    $dates = date('H:i d-m-Y');

    $CheckUser = mysqli_fetch_array(mysqli_query($dp, "SELECT *  FROM users where login = '$login'"));


    if(empty($CheckUser)){
        if(!checklength($login, 3, 8))
        {
            header('Location: ../pages/register.php');
            $_SESSION['message'] = "Длина логина должна быть 3 - 8 символов!";
        }
        elseif (!checklength($password, 4, 16))
        {
            header('Location: ../pages/register.php');
            $_SESSION['message'] = "Длина логина должна быть 4 - 16 символов!";
        }
        else
        {
            if ($password === $password_confirm) {
                $password = md5($password);

                    mysqli_query($dp, "INSERT INTO `users` (`id`, `full_name`, `login`, `email`, `password`, `date`) VALUES (NULL, '$full_name', '$login', '$email', '$password', '$dates')");
                    header('Location: ../pages/auth.php');

                } else {
                    $_SESSION['message'] = 'Пароли не совпадают';
                    header('Location: ../pages/register.php');
                }
        }

    }else{
        $_SESSION['message'] = 'Аккаунт с данным логином уже существует в системе';
        header('Location: ../pages/register.php');
    }
?>
