<?php 

session_start();

if (!isset($_SESSION['uname'])) {
    header("Location: index.php");
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="test.css">
    <title>Document</title>
</head>
<body>
<nav class="navbar navbar-light bg-dark">
  <div class="container-fluid text-white">
    <a class="navbar-brand text-white"><h2>Inventory Management</h2></a>
    <a class="navbar-brand text-white"><h2>Admin Panel</h2></a>
    <span>
    <i class="fas fa-users-cog"></i>
    Hello, <?php echo  $_SESSION['uname'] ; ?> |
    <i class="fa-solid fa-right-from-bracket"></i>
    <a href="logout.php" class="text-decoration-none text-white">Logout</a>
    </span>
  </div>
</nav>
<main class="main">
  <aside class="sidebar">
    <nav class="nav">
      <ul>
        <li class="active"><a href="dashboardAdmin.php">Welcome</a></li>
        <li><a href="productDetails.php">Product Details</a></li>
        <li><a href="productAdd.php">Add Product</a></li>
        <li><a href="userDetails.php">User</a></li>
      </ul>
    </nav>
  </aside>  
</main>
</body>
</html>