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

    $sql="SELECT filmy.*
    from filmy
        INNER JOIN recenzje ON filmy.recenzjaID = recenzje.IDRecenzja
    WHERE ocena = 4;";
    $result=$conn->query($sql);
    echo "<table>";
    while ($row=$result-> fetch_assoc()){
        echo "<tr>";
        foreach ($row as $el) {
            echo "<td>$el</td>";
        }
        echo "</tr>";
    }
    echo "</table>";


    /// wypisz tytuł, gatunek filmu, nazwisko reżysera, treść recenzji w postaci tabeli 
    // dodatkowo nazwy pól w wierszu nagłówkowym
    $sql="SELECT tytul, gatunek, nazwisko, tresc
    FROM filmy
        INNER JOIN recenzje ON filmy.recenzjaID= recenzje.IDRecenzja
        INNER JOIN rezyserzy ON filmy.rezyserID = rezyserzy.IDrezyser;";
    $result=$conn->query($sql);
    echo "<table>";
    while($row=$conn->fetch_assoc()){
        echo "<tr>";
        foreach($row as $ele){
            echo "<td>$ele</td>";
        }
        
        echo"</tr>";
    }

    echo "</table>";

    $conn->close();
    ?>
</body>
</html>