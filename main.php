<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>Тег INPUT, атрибут checked</title>
</head>
<body>
	<form method="post" action="main.php">
		<p>
			<b>Выберите язык</b>
		</p>
		<p>
			<input type="radio" id="en" name="lang" value="en"><label for="en">en</label><Br>
			<input type="radio" id="ru" name="lang" value="ru"><label for="ru">ru</label><Br>
		<p>
			<input type="submit" value="Отправить">
		</p>
	</form>
</body>
</html>
<?php
if (isset($_POST['lang']) && $_POST['lang'] == 'en') {
	include_once 'resume_en_EN.php';
}elseif (isset($_POST['lang']) && $_POST['lang'] == 'ru') {
	include_once 'resume_ru_RU.php';
} else echo "please choose one language";

?>
