<?php
//session_start();

include 'db_connect.php';
$_id = $_GET['updateid'];

$query="SELECT * FROM collect_user WHERE id=$_id";
$result=mysqli_query($conn,$query);
$row = mysqli_fetch_assoc($result);

// $name = $row['p_name'];
// $amount = $row['p_amount'];
// $price = $row['p_price'];

$fullname = $row['cfullname'];
$email = $row['cemail'];
$username = $row['cuname'];
$password = $row['cpass'];
$phone = $row['cphone'];
$type = $row['ctype'];



if (isset($_POST["update"])) {

    // $p_name = $_POST['p_name'];
    // $p_amount = $_POST['p_amount'];
    // $p_price = $_POST['p_price'];

    

	$fullname = $_POST['fullname'];
	$email = $_POST['email'];
	$username = $_POST['username'];
	$password = $_POST['password'];
	$phone = $_POST['phone'];
    $type = $_POST['type'];

    $query = "UPDATE collect_user SET id=$_id,cfullname='$fullname',cemail='$email',cuname='$username',cpass='$password',cphone='$phone',ctype='$type' WHERE id=$_id";

    $result = mysqli_query($conn, $query);

    if ($result) {
        header('Location: userDetails.php');
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
				<label>Full Name</label>
				<input type="text" class="form-control" placeholder="Full Name:" name="fullname" value=<?php echo $fullname;?>>
			</div>
			<div class="mb-3">
				<label>Email</label>
				<input type="email" class="form-control" placeholder="Email:" name="email" value=<?php echo $email;?>>
			</div>
			<div class="mb-3">
				<label>User Name</label>
				<input type="text" class="form-control" placeholder="Username:" name="username" value=<?php echo $username;?>>
			</div>
			<div class="mb-3">
				<label>Password</label>
				<input type="password" class="form-control" placeholder="Password" name="password" value=<?php echo $password;?>>
			</div>
			<div class="mb-3">
				<label>Phone</label>
				<input type="text" class="form-control" placeholder="Phone:" name="phone" value=<?php echo $phone;?>>
			</div>
			<select class="form-select" aria-label="Default select example" name="type">
				<option selected>Account Type</option>
				<option value="admin">Admin</option>
				<option value="user">User</option>
			</select>
            <br>
            <button type="submit" class="btn btn-primary" name="update">Update</button>
        </form>
    </div>
</body>

</html>