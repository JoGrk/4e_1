
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Raport</title>
</head>
<body>
    <?php
        echo " <h1> Dania</h1>\n <p>tu będzie lista dań</p>";
        $conn = new mysqli('localhost', 'root', '','4e_1_raporty');

        $sql="SELECT nazwa FROM dania";

        $result = $conn->query($sql);
        echo "<ul>";
        while ($row = $result->fetch_assoc()){
            $nazwa = $row['nazwa'];
            echo "<li> $nazwa  </li>";
        }
        echo "</ul>";

        $conn->close();
    ?>
</body>
</html>