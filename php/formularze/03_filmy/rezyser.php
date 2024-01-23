<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $conn = new mysqli('localhost', 'root', '', '4E_1_filmy');
    if(isset($_POST['imie']) && isset($_POST['nazwisko'])){
        $imie = $_POST['imie'];
        $nazwisko = $_POST['nazwisko'];
        
        $sql="SELECT imie, nazwisko
        FROM rezyserzy
        WHERE imie = '$imie' AND nazwisko = '$nazwisko';"

        $result = $conn->query($sql);

        if($result->num_rows>0){
            echo "rezyser $imie $nazwisko jest w bazie";
        }
        else{
            $sql2 = "INSERT INTO rezyserzy(imie, nazwisko) values('$imie', '$nazwisko')";
        }
    }
    else 
    {
        echo "uzupelnij dane!";
    }

    $conn->close();


    ?>
</body>
</html>