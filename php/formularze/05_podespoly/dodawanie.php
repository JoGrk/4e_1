<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $nazwa = $_POST['nazwa'] ?? null;
    $cena = $_POST['cena'] ?? null;
    $id_producenta = $_POST['id_producenta'] ?? null;
    $id_typu = $_POST['id_typu'] ?? null;

    if(!($nazwa && $cena && $id_producenta && $id_typu)) {
        echo "
        <div>
            <p>Nie podano danych</p>
            <a href='index.php'>Powrót</a>
        </div>
        ";
        die();
    }
    $conn = new mysqli("localhost",'root','','4e_1_baza');
    $sql = "
    INSERT INTO podzespoly 
    (typy_id,producenci_id,nazwa,cena) 
    VALUES ($id_typu,$id_producenta,'$nazwa',$cena)
    ";
    $res = $conn->query($sql);
    if($conn->errno) {
        echo "
        <div>
            <p>Wystąpił błąd</p>
            <a href='index.php'>Powrót</a>
        </div>
        ";
        die();
    }
    echo "
    <div>
        <p>Dodano $nazwa</p>
        <a href='index.php'>Powrót</a>
    </div>
    ";
    ?>
</body>
</html>
