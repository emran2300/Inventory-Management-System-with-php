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
    <title>User Details</title>
</head>

<body>
    <div class="container">
        <button class="btn btn-primary my-5"><a href="userAdd.php" class="text-light">Add user</a></button>

        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th scope="col">Serial Number</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Username</th>
                    <th scope="col">Password</th>
                    <th scope="col">Number</th>
                    <th scope="col">Type</th>
                </tr>
            </thead>
            <tbody>

            <?php
            $query = "SELECT * FROM collect_user";
            $result = mysqli_query($conn, $query);

            if($result)
            {                             
                while($row = mysqli_fetch_assoc($result))
                {
                    $id = $row['id'];
                    $fullname = $row['cfullname'];
                    $email = $row['cemail'];
                    $username = $row['cuname'];
                    $password = $row['cpass'];
                    $phone = $row['cphone'];
                    $type = $row['ctype'];

                    echo '<tr>
                    <th scope="row">'.$id.'</th>
                    <td>'.$fullname.'</td>
                    <td>'.$email.'</td>
                    <td>'.$username.'</td>
                    <td>'.$password.'</td>
                    <td>'.$phone.'</td>
                    <td>'.$type.'</td>

                    <td>
                 <button class="btn btn-primary"><a href="userUpdate.php? updateid='.$id.'" class="text-light">Update</a></button>
                 <button class="btn btn-danger"><a href="userDelete.php? deleteid='.$id.'" class="text-light">Delete</a></button>
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