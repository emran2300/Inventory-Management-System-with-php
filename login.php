<?php
session_start(); 
include "db_connect.php";

if (isset($_POST['username']) && isset($_POST['password'])) 
{   
    function validation($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    $uname = validation($_POST['username']);
    $upass = validation($_POST['password']);

    if (empty($uname)) 
    {
        header("Location: index.php?error=Username is requried");
    } else if (empty($upass)) 
    {
        header("Location: index.php?error=Password is requried");
    } else 
    {
        
        $query = "SELECT * FROM collect_user WHERE cuname = '$uname' AND cpass='$upass'";
        $result = mysqli_query($conn, $query);

        if (mysqli_num_rows($result) === 1) 
        {
            $row = mysqli_fetch_assoc($result);

            if ($row['ctype'] =="user") 
            {
                //echo " user";
                $_SESSION['uname'] = $row['cuname'];
            	$_SESSION['upass'] = $row['cpass'];
            	$_SESSION['id'] = $row['id'];
            	
            	header("Location: dashboardUser.php");                
		        exit();                
            }
            else if($row['ctype'] =="admin")
            {     
                $_SESSION['uname'] = $row['cuname'];
            	$_SESSION['upass'] = $row['cpass'];
            	$_SESSION['id'] = $row['id'];   
                //echo " admin";        
                header("Location: dashboardAdmin.php");
		        exit();
            }
        }
        else
        {           
			header("Location: index.php?error=Incorect User name or password");
	        exit();
		} 
    }
} 
else 
{
   header("Location: index.php");
   exit();
}
