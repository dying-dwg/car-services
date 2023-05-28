<?php 
session_start();
if ($_SESSION['user']) {
    $flag = 1;
}
include '../connect.php'; 
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Выбор А-сервиса: Автосервисы</title>


	<!-- CSS -->
	<!-- Лого сайта -->
	<link rel="icon" type="image/png" href="../img/logo.png">

	

	<!-- Сзадний фон -->
	<link rel="stylesheet" type="text/css" href="../css/color-text.css">
	<!--Основа сайта-->
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<!--Шрифт-->

	<link rel="stylesheet" type="text/css" href="../css/shadow.css">

	<!-- css end -->

</head>
<body>
		<!-- navbar -->
		<div class="navbar">
			<div class="container">
				<div class="navbar-nav">
					<div class="navbar-brand">
						<a href="../index.php"><img class="navbar-brand-png" src="../img/logo_main.png"><a>
					</div>
					<div class="navs" id="navs">
						<div class="navs-item notbtn"><a href="galery.php" class="txt-uppercase">Галерея</a></div>
						<div class="navs-item notbtn"><a href="" class="txt-uppercase">Автосервисы</a></div>
						<? if($flag == 1){ ?>
    						<div class="navs-item"><a href="profile.php"><button class="btn  shadow-sm blue"><?= $_SESSION['user']['full_name'] ?></button></a></div>
    						<div class="navs-item"><a href="../RAA/logout.php"><button class="btn txt-uppercase shadow-sm">Выход</button></a></div>
						<? }else{ ?>
						<div class="navs-item"><a href="auth.php"><button class="btn txt-uppercase shadow-sm">Войти</button></a></div>
						<div class="navs-item"><a href="register.php"><button class="btn txt-uppercase shadow-sm">Регистрация</button></a></div>
 						<? } ?> 
					</div>
				</div>
			</div>
		</div>
		<!-- navbar end -->		

		<!-- jumbotron -->
	<div class="container">
	<div class="jumbotron-item">
	<div class="features-box">
		<h1 class="features-t">Адреса автосервисов</h1>

		<table align="center" class="serv-tables" >
			<tr>
				<th>Адрес</th>
				<th>График работы</th>
				<th>Как добраться?</th>
			</tr>

			<?php $SERV = mysqli_query($dp, "SELECT * FROM addresses"); 
			while($outserv = mysqli_fetch_array($SERV))
			{
				echo '<tr>
				<td>'.$outserv[1].'</td><td>'.$outserv[2].'</td><td><div class="navs-item notbtn"><a href="'.$outserv[3].'" class="txt-uppercase">Открыть Я.Карту</a></div></td>
				</tr>';
			}
			echo "</table>"
			?>
		</table>
	</div>
	</div>
	</div>

		<!-- jumbotron -->
	<div class="container">
	<div class="jumbotron-item">
	<div class="features-box">
		<h1 class="features-t">Проводимые работы</h1>

		<table align="center" class="serv-tables" >
			<tr>
				<th>Работы</th>
				<th>Цена</th>
			<? if($flag == 1){ ?>
				<th>Выбор</th>
			<? } ?>
			</tr>
			<form method="POST">
			<? $PROD = mysqli_query($dp, "SELECT * FROM product"); 
			while($outprod = mysqli_fetch_array($PROD))
			{
				echo '<tr>
				<td>'.$outprod[1].'</td><td>'.$outprod[2].'</td>';
				if($flag == 1){ 
				?>
				<td>
		    	
				<p><input value=<?=$outprod[0]?> name="ArrCart[]" type="checkbox"></p>
				</td>
				<?
				}
				echo '</tr>';
			}
			?>

			</table>
		<?php if($flag == 1){  ?><div align="center"><input type="submit" name = "addcart" value="Добавить"></div> <?}?>
	</form>

<?php 
$user = $_SESSION['user']['login'];
$dates = date('H:i d-m-Y');



if($_POST["addcart"]){
	foreach($_POST["ArrCart"] as $prod){
	    mysqli_query($dp, "INSERT INTO `cart` (`id`, `user`, `prod`, `date`) VALUES (NULL, '$user', '$prod', '$dates')");
	}
	echo "Работы добавлены в корзину!";
}

 ?>



		</table>
	</div>
	</div>
	</div>


	<!-- НИЗ САЙТА -->
	<div class="footer">
		<div class="container">
			<div class="footer-items">
				<div class="footer-item">
					<span></span>
				</div>				
				</div>
			</div>
		</div>
	</div>

</body>
</html>
