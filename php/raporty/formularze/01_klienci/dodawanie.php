<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $name =  $_POST['name'];
    $surname =  $_POST['surname'];
    echo "<p> $name $surname </p>";
    $conn = new mysqli ('localhost', 'root', '', '4e_1_formularze');
    $sql = "insert into klienci(imie, nazwisko)
    values('$name', '$surname')";
    $conn->query($sql);

    $conn->close();
    ?>
</body>
</html>