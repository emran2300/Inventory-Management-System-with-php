<?php
//session_start();

include 'db_connect.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Product Details</title>
</head>

<body>
    <div class="container">
        <button class="btn btn-primary my-5"><a href="productAdd.php" class="text-light">Add Product</a>
        </button>

        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th scope="col">Serial Number</th>
                    <th scope="col">name</th>
                    <th scope="col">Amount</th>
                    <th scope="col">Price</th>
                    <th scope="col">Operation</th>
                </tr>
            </thead>
            <tbody>

            <?php
            $query = "SELECT * FROM product";
            $result = mysqli_query($conn, $query);

            if($result)
            {                             
                while($row = mysqli_fetch_assoc($result))
                {
                    $id = $row['id'];
                    $name = $row['p_name'];
                    $amount = $row['p_amount'];
                    $price = $row['p_price'];

                    echo '<tr>
                    <th scope="row">'.$id.'</th>
                    <td>'.$name.'</td>
                    <td>'.$amount.'</td>
                    <td>'.$price.'</td>
                    <td>
                 <button class="btn btn-primary"><a href="productUpdate.php? updateid='.$id.'" class="text-light">Update</a></button>
                 <button class="btn btn-danger"> <a href="productDelete.php? deleteid='.$id.'" class="text-light">Delete</a></button>
             </td>  
                </tr>';
                }
            }

            ?>
            
              
            </tbody>
        </table>
    </div>
</body>

</html>