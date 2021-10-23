<?php
//session_start();

include 'db_connect.php';

if (isset($_POST["add"])) {
	// if (!empty($_POST['type'])) 
	// {

	// } else {
	// 	echo "not selected";
	// }
	function validation($data)
	{
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}
	$type = $_POST['type'];
	$fullname = validation($_POST['fullname']);
	if (!preg_match("/^[a-zA-Z-' ]*$/",$fullname)) {
		$$nameErr = "Only letters and white space allowed";
	  }
	$email = validation($_POST['email']);
	if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		$emailErr = "Invalid email format";
	  }
	$username = validation($_POST['username']);
	$password = validation($_POST['password']);
	$phone = validation($_POST['phone']);

	if (empty($fullname)) {
		header("Location: userAdd.php?error=Full Name is requried");
	} else if (empty($username)) {
		header("Location: userAdd.php?error=username is requried");
	} else if (empty($password)) {
		header("Location: userAdd.php?error=password is requried");
	} else {

		//$query = "INSERT INTO product (p_name, p_amount, p_price) VALUES ('$p_name', '$p_amount', '$p_price')";

		$query = "INSERT INTO collect_user (cfullname, cemail, cuname, cpass, cphone, ctype) VALUES ('$fullname', '$email', '$username', '$password', '$phone', '$type')";

		$result = mysqli_query($conn, $query);

		if ($result) {
			echo "added";
			header('Location: userDetails.php');
		} else {
			//echo "Not Inserted";
			die(mysqli_error($conn));
		}
		//echo "selected";
	}
} else {
	//header('Location: test2.php');
}
?>


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
				<input type="text" class="form-control" placeholder="Full Name:" name="fullname" autocomplete="off">
			</div>
			<div class="mb-3">
				<label>Email</label>
				<input type="email" class="form-control" placeholder="Email:" name="email" autocomplete="off">
			</div>
			<div class="mb-3">
				<label>User Name</label>
				<input type="text" class="form-control" placeholder="Username:" name="username" autocomplete="off">
			</div>
			<div class="mb-3">
				<label>Password</label>
				<input type="password" class="form-control" placeholder="Password" name="password">
			</div>
			<div class="mb-3">
				<label>Phone</label>
				<input type="text" class="form-control" placeholder="Phone:" name="phone" autocomplete="off">
			</div>
			<select class="form-select" aria-label="Default select example" name="type">
				<option selected>Account Type</option>
				<option value="admin">Admin</option>
				<option value="user">User</option>
			</select>
			<br>
			<button type="submit" class="btn btn-primary" name="add">Add</button>
		</form>
	</div>
</body>

</html>