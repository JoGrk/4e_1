<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <ol>
        <?php 
        $conn = new mysqli('localhost','root','','4e_1_biblioteka');

        $sql = "SELECT tytul,imie,nazwisko FROM ksiazki
        JOIN autorzy on ksiazki.id_autor = autorzy.id";

        $result = $conn -> query($sql);
        while($row = $result->fetch_assoc()) {
            $imie = $row['imie'];
            $nazwisko = $row['nazwisko'];
            $tytul = $row['tytul'];

            echo "<li> $imie $nazwisko - <b>$tytul</b> </li>";
        }
        ?>
    </ol>

    <form action="usuwanie.php" method="post">
        <label for="idczytelnika">Wybierz czytelnika</label> 
        <select name="idczytelnika" id="idczytelnika">
            <?php 
            $sql = "SELECT id, imie, nazwisko FROM czytelnicy;";
            $result = $conn->query($sql);
            $czytelnicy = $result->fetch_all(1);
            foreach($czytelnicy as $czytelnik) {
                $id=$czytelnik['id'];
                $imie=$czytelnik['imie'];
                $nazwisko=$czytelnik['nazwisko'];
                echo "<option value='$id'>$imie $nazwisko</option>";
            }
            $conn -> close();
            ?>
        </select>
        <button>Wykonaj</button>
    </form>
</body>
</html>