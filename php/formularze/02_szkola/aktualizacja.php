<?php 
$conn = new mysqli('localhost', 'root', '', '4e_1_szkola' );
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        if(isset($_POST['id-ucznia'])){
            $id=$_POST['id-ucznia'];
        $sql = "UPDATE uczen
        SET miejsce_urodzenia = 'Bydgoszcz'
        WHERE id = $id";
        
        if($conn -> query($sql)){
            echo "dane zostały zaktualizowane";
        }
        }
     $conn -> close();   
    ?>
</body>
</html>