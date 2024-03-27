<?php
include("../../../includes/dbconnect.php");
include("../sessions.php");
$conn = DBconnect();
if (isset($_POST['logbook'])) {

$date = $_POST['date'];
$email = $_POST['email'];


$target = "../uploads/".basename($_FILES['file']['name']);
$file = $_FILES['file']['name'];
$sql = "INSERT INTO students_logbook(email,file,date)VALUES('$email','$file','$date')";
$query = mysqli_query($conn,$sql);
if ($query) {
		move_uploaded_file($_FILES['file']['tmp_name'], $target);
	echo "<script>alert('Successful Logbook Updated');
	  window.location.href='logbook.php'; </script>";
}else{
	echo "<script>alert('Unable to Update Logbook');
	  window.location.href='logbook.php'; </script>";
}
}

?>