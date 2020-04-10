<?php

$query = $_GET["q"];

$titletext ='
{
  "status": "ok",
  "title": "Выполнение задания по  стеку Sap-ui, JavaSript, php, mysql, xlsx \n \n В задании представлена база данных продуктов в формате SAP-UI. Продукты можно дополнить. Карточки продуктов можно посмотреть в приложении.  \n База данных представленна в форме mysql. Данные Sap-ui наполняются посредством коннектора из Mysql  \n \n Решение показывает  навыки \n - Sap-ui \n - Kotlin \n - LAMP Ubuntu \n -  PHP \n -  JavaScript \n - CSS \n - MySQl \n - Верстка  \n  \n "
}
';

$myArray = json_decode($titletext);
header('Content-Type: application/json');
echo json_encode($myArray);
?>