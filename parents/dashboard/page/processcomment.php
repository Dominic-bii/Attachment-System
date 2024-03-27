<?php
include("../sessions.php");
include("../../../includes/dbconnect.php");

$conn = DBconnect();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $comment_date = $_POST["date"];
    $student_email = $_POST["student_email"];
    $parent_email = $_POST["email"];
    $comment_text = $_POST["comment_text"];

    // You should perform proper validation and sanitation of input data

    $sql = "INSERT INTO comments (comment_date, student_email, parent_email, comment_text)
            VALUES ('$comment_date', '$student_email', '$parent_email', '$comment_text')";

    if (mysqli_query($conn, $sql)) {
        // Comment added successfully
        header("Location: comments.php"); // Redirect to the comments page or any other page
        exit();
    } else {
        // Error in adding comment
        echo "Error: " . mysqli_error($conn);
    }
}

// Close the database connection
mysqli_close($conn);
?>
