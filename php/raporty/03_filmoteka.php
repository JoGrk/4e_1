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
    $conn=new mysqli("localhost", "root", "", "4e_1_filmoteka");
    $sql="SELECT tytul
    FROM filmy
    WHERE Gatunek = 'SF'";
    $result=$conn->query($sql);
    echo "<ol>";
    while($row=$result->fetch_assoc()){
        $film=$row['tytul'];
        echo "<li> $film </li>";
    }
    echo "</ol>";

    $sql="SELECT tytul, nazwisko
    FROM filmy
        INNER JOIN rezyserzy ON filmy.rezyserID = rezyserzy.IDrezyser";
    $result=$conn->query($sql);
    echo "<ul>";
    while($row=$result->fetch_assoc()){
        $tytul=$row['tytul'];
        $nazwisko=$row['nazwisko'];
        echo "<li><b>$tytul</b> $nazwisko</li>";
    }



    echo "</ul>";
    $conn->close();
    ?>
</body>
</html>