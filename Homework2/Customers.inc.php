<?php 
    include_once 'dbh.inc.php';

    $Phone_Number = $_POST['Phone_Number'];
    $Name = $_POST['Name'];
    $Last_Name = $_POST['Last_Name'];
    $Phone_Number = $_POST['First_Name'];



    $sql = "INSERT INTO customers (Phone_Number, Name, Last_Name, First_Name) VALUES
            ('$Phone_Number', '$Name', '$Last_Name', '$Phone_Number');";
    mysqli_query($conn, $sql);

    header("Location: ..\index.php?signup = sucesss");