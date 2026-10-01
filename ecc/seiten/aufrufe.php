<?php
include 'verbindung.php';
function getNameByID($conn,$id){
    $sql = "SELECT * FROM rezepte WHERE id=$id";
    $result = $conn->query($sql);


    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
        return $row["name"];
        }
    }        
}
function getIDByName($conn,$name){
    $sql = "SELECT * FROM rezepte WHERE name='$name'";
    $result = $conn->query($sql);


    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
        return $row["id"];
        }
    }        
}
function getImageByID($conn,$id,$image){
    $sql = "SELECT * FROM rezepte WHERE id=$id";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
          return $row[$image];
        }
    } 
}
function getDurationByID($conn,$id){
    $sql = "SELECT * FROM rezepte WHERE id=$id";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
          return $row["zeitdauer"];
        }
    } 
}
function getContentsByID($conn, $id){
    $sql = "SELECT * FROM zutaten WHERE rezept_id = $id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo "<p>".$row["name"]." ".$row["menge"]." ".$row["einheit"]."</p>";
        }
    }
}
function getPreparationByID($conn,$id){
    $sql = "SELECT * FROM zubereitungsschritte WHERE rezept_id = $id ORDER BY schrittnummer ASC;";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $index = 1;
        while($row = $result->fetch_assoc()) {
            echo "<li>".$index.".".$row["beschreibung"]."</li><br>";
            $index++;
        }
    }
}
function getAllFoods($conn){
    $sql = "SELECT * FROM rezepte";
    $result = $conn->query($sql);
    
    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            ?>
    
    <li class="food-items breakfast">
        <a href="detail.php?speisen=<?=$row["name"]?>" class="food-items_container">
            <img src="../bilder/<?=$row["bild"]?>" alt="">
            <p><?=$row["name"]?></p>
        </a>
    </li>
            <?php
        }
    }
}
function getFoodsByCategory($conn, $category){
    $sql = "SELECT * FROM rezepte WHERE kategorie LIKE '%$category%'";
    $result = $conn->query($sql);
    
    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            ?>
    
    <li class="food-items breakfast">
        <a href="detail.php?speisen=<?=$row["name"]?>" class="food-items_container">
            <img src="../bilder/<?=$row["bild"]?>" alt="">
            <p><?=$row["name"]?></p>
        </a>
    </li>
    
            <?php
        }
    }
}
function getFoodsBySearch($conn, $search){

    $array = explode(',', $search);
    $index = 0;
    $sql = "SELECT DISTINCT rezepte.name,rezepte.bild FROM rezepte INNER JOIN zutaten on rezepte.id = zutaten.rezept_id WHERE";
    for ($i=$index; $i < count($array); $i++) { 
        if ($i<count($array) - 1) {
            $searchValues = trim($array[$i]);
            $sql = $sql ."(rezepte.name LIKE '%$searchValues%' or zutaten.name like '$searchValues') or ";
        }else{
            $searchValues = trim($array[$i]);
            $sql = $sql ."(rezepte.name LIKE '%$searchValues%' or zutaten.name like  '$searchValues')";
        }
    }
	$result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            ?>
    
    <li class="food-items breakfast">
        <a href="detail.php?speisen=<?=$row["name"]?>" class="food-items_container">
            <img src="../bilder/<?=$row["bild"]?>" alt="">
            <p><?=$row["name"]?></p>
        </a>
    </li>
    
            <?php
        }
    }
}
?>