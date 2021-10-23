<?php
include 'db_connect.php';
if(isset($_GET['deleteid']))
{
    $_id=$_GET['deleteid'];

    $query="DELETE FROM collect_user WHERE id=$_id";
    $result=mysqli_query($conn,$query);

    if ($result) {
        header('Location: userDetails.php');
    } else {        
        die(mysqli_error($conn));
    }
}
?>