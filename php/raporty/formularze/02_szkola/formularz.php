<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<h1>Uczniowie</h1>
<section>
    <h2>Lista uczniów</h2>


<?php
    $conn = new mysqli("localhost","root","","4e_1_szkola");
    $sql="select * from uczen;";
    $result=$conn->query($sql);
    $uczniowie=$result->fetch_all(1);
    $conn->close();
    ?>
    <table>
    <?php
        foreach($uczniowie as $uczen){
        echo "<tr>"; 
            foreach($uczen as $kolumna){
                echo "<td>$kolumna</td>";
            }
        echo "</tr>";
        }
    ?>
    </table>
    

</section>

</body>
</html>