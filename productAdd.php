<?php
//session_start();

include 'db_connect.php';
if (isset($_POST["add"])) {
   
    $p_name = $_POST['p_name'];
    $p_amount = $_POST['p_amount'];
    $p_price = $_POST['p_price'];
  
     $query = "INSERT INTO product (p_name, p_amount, p_price) VALUES ('$p_name', '$p_amount', '$p_price')";
       
        $result = mysqli_query($conn, $query);

        if ($result) {
            header('Location: productDetails.php');
        } else {
            //echo "Not Inserted";
            die(mysqli_error($conn));
        }
    }

?>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Product Details</title>
</head>

<body>
    <div class="container my-5">
        <form method="post">
            <div class="mb-3">
                <label>Name</label>
                <input type="text" class="form-control" placeholder="Product Name:" name="p_name" autocomplete="off">
            </div>
            <div class="mb-3">
                <label>Amount</label>
                <input type="number" class="form-control" placeholder="Product amount:" name="p_amount">
            </div>
            <div class="mb-3">
                <label>Price</label>
                <input type="text" class="form-control" placeholder="Product Price:" name="p_price" autocomplete="off">
            </div>

            <button type="submit" class="btn btn-primary" name="add">Add</button>
        </form>
    </div>
</body>

</html>