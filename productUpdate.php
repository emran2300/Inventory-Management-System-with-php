<?php
//session_start();

include 'db_connect.php';
$_id = $_GET['updateid'];

$query="SELECT * FROM product WHERE id=$_id";
$result=mysqli_query($conn,$query);
$row = mysqli_fetch_assoc($result);
$name = $row['p_name'];
$amount = $row['p_amount'];
$price = $row['p_price'];




if (isset($_POST["update"])) {

    $p_name = $_POST['p_name'];
    $p_amount = $_POST['p_amount'];
    $p_price = $_POST['p_price'];

    $query = "UPDATE product SET id=$_id,p_name='$p_name',p_amount='$p_amount',p_price='$p_price' WHERE id=$_id";

    $result = mysqli_query($conn, $query);

    if ($result) {
        header('Location: productdetails.php');
        //echo "Updated";
    } else {        
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
                <input type="text" class="form-control" placeholder="Product Name:" name="p_name" value=<?php echo $name;?>>

            </div>
            <div class="mb-3">
                <label>Amount</label>
                <input type="number" class="form-control" placeholder="Product amount:" name="p_amount" value=<?php echo $amount;?>>
            </div>
            <div class="mb-3">
                <label>Price</label>
                <input type="text" class="form-control" placeholder="Product Price:" name="p_price" value=<?php echo $price;?>>
            </div>

            <button type="submit" class="btn btn-primary" name="update">Update</button>
        </form>
    </div>
</body>

</html>