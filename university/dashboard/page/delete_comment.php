<?php
// Include your database connection file (dbconnect.php)
include("../../../includes/dbconnect.php");
$conn = DBconnect();
// Check if the id parameter is set in the URL
if (isset($_GET['id'])) {
    // Get the id parameter from the URL
    $id = $_GET['id'];

    // SQL query to delete the comment based on the provided id
    $sql = "DELETE FROM comments WHERE id = '$id'";

    // Execute the query
    $result = mysqli_query($conn, $sql);

    if ($result) {
        // comment successfully deleted
        echo "<script>alert('comment deleted successfully');</script>";
    } else {
        // Error in deletion
        echo "<script>alert('Error deleting comment');</script>";
    }
} else {
    // Redirect to an error page if id parameter is not set
    header("Location: error.php");
    exit();
}

// Close the database connection
mysqli_close($conn);

// Redirect to the page where you display the list of comments
header("Location: comments.php");
exit();
?>
