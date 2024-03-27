<?php

include("../../includes/dbconnect.php");


?>
<?php

//include("../../includes/dbconnect.php");

//call connection file
 $conn = DBconnect();
if (isset($_POST['signup'])) {
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];
$password = $_POST['phone'];
$sql = "SELECT * FROM parents WHERE email='$email'";
$query = mysqli_query($conn,$sql);
if ($query) {
$fetch = mysqli_fetch_array($query);
	if ($fetch['email']==$email) {
	echo "<script>alert('Parent Already Registered using this email');
	  window.location.href='../parentsignup.php'; </script>";
	  exit();
}
else{
	$sq = "INSERT INTO parents(firstname,lastname,email,phone)VALUES('$firstname','$lastname','$email','$password')";
	$que = mysqli_query($conn,$sq);
	if ($que) {
		session_start();
		  $mail = $_SESSION["email"];
			echo "<script>alert('Successful parent Registered');
	  window.location.href='../dashboard'; </script>";
	}else{
echo mysqli_error($conn);
	}
}

}else{
	echo mysqli_error($conn);
}

}


?>