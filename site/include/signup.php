<?php
if(!isset($_POST)) {
    die("Ошибка соединения. Обратитесь к администрации.");
}
$name = $_POST["name"];
$surname = $_POST["surname"];
$patronymic = $_POST["patronymic"];
$email = $_POST["email"];
$phone = $_POST["phone"];
$tour_id = $_POST["tour_id"];
include 'connect.php';
$link = mysqli_connect($host, $user, $password, $db_name);
$client_id = $link->query("SELECT `id_client` FROM client WHERE BINARY `email_client` = '$email'");
if($client_id->num_rows > 0) {
    $client_id = $client_id->fetch_assoc()["id_client"];
}
else {
    $link->query("INSERT INTO `client`(`name_client`, `surname_client`, `patronymic_client`, `email_client`, `phone_client`) VALUES ('$name','$surname','$patronymic','$email','$phone')");
    $client_id = mysqli_insert_id($link);
}
$result = $link->query("INSERT INTO `tour_client`(`id_client`, `id_tour`) VALUES ('$client_id','$tour_id')");
if($link->errno) {
    echo "Произошла ошибка при записи. Обратитесь к администрации. Код ошибки: " . $link->errno . $client_id;
}
else {
    echo "Вы успешно записались";
}
$link->close();
?>