<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $conn = new mysqli('localhost', 'root', '','ex_baza');
    $sql = "SELECT imie, nazwisko FROM pracownicy";
    $res = $conn->query($sql);
    echo "<ul>";
    while($row=$res->fetch_assoc()){
        $imie = $row['imie'];
        $nazwisko = $row['nazwisko'];
        echo "<li>$imie $nazwisko</li>";
    }
    echo "</ul>";

    echo "<ol>";
    $sql="SELECT marka, model, kolor, stan FROM samochody";
    $res = $conn->query($sql);
    
    $samochody = $res->fetch_all(1);
    foreach($samochody as $samochod) {
        $kolor = $samochod['kolor'];
        $marka = $samochod['marka'];
        $model = $samochod['model'];
        $stan = $samochod['stan'];

        echo "<li>$kolor $marka $model $stan</li>";
    }
    echo "</ol>";
    $conn->close();
?>


</body>
</html>