<?php
        $conn = new mysqli('localhost', 'root', '', '4e_1_baza');
        $sql = "SELECT kategoria,nazwa,cena 
        FROM podzespoly
            INNER JOIN typy ON podzespoly.typy_id = typy.id";
        $result = $conn -> query($sql);
        $podzespoly = $result -> fetch_all(1);
        $sql = "SELECT id,kategoria FROM typy";
        $result = $conn -> query($sql);
        $kategorie = $result -> fetch_all(1);

        $conn -> close();
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Lista podzespołów</h1>
    <ul>
        <?php
        foreach($podzespoly as $podzespol){
            echo 
            "<li> 
                <b>{$podzespol['kategoria']}</b>
                {$podzespol['nazwa']} - 
                {$podzespol['cena']}
            </li>";
        }
        ?>
    </ul>
    <form action="dodawanie.php" method="POST">
        <input type="text" name="nazwa" placeholder="nazwa">
        <input type="number" name="cena" placeholder="cena">
        <input type="number" name="id_producenta" placeholder="id producenta">
        <select name="id_typu">
            <?php
                foreach($kategorie as $kategoria){
                    echo 
                    "<option value={$kategoria['id']}>
                       {$kategoria['kategoria']}
                    </option>";
                }
            ?>
        </select>
    </form>
</body>
</html>