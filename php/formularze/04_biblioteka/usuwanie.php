<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=<, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php 
    $conn = new mysqli('localhost','root','','4e_1_biblioteka');
    $id = $_POST['idczytelnika'];
    $sql = "DELETE FROM wypozyczenia WHERE id_czytelnik=$id";
    if($conn -> query($sql)){
        echo "Wypożyczenie użytkownika o $id usunięto.";
    }
        
    $conn -> close();
    ?>
</body>
</html>