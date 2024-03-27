<?php
include("../../../includes/dbconnect.php");
$conn = DBconnect();
$errors = array();

// Fetch all registered supervisors
$supervisorsQuery = "SELECT id, email, supervisor_fname, supervisor_lname FROM supervisors";
$supervisorsResult = $conn->query($supervisorsQuery);

$supervisors = array();
while ($supervisor = $supervisorsResult->fetch_assoc()) {
    $supervisors[] = $supervisor;
}

if (isset($_POST['submit'])) {
    $supervisorId = $_POST["supervisor"];
    
    // Get the student ID from the form submission
    $studentId = $_POST["id"];

    // Check if the student already has an assigned supervisor
    $checkQuery = "SELECT assigned_supervisor FROM students WHERE id = $studentId";
    $checkResult = $conn->query($checkQuery);
    $assignedSupervisor = $checkResult->fetch_assoc()['assigned_supervisor'];

    if ($assignedSupervisor) {
        echo "<script type='text/javascript'>
                alert('This student is already assigned to a supervisor. Assigned Supervisor: $assignedSupervisor');
              </script>";
    } else {
        // Validation (if needed)

        $query = "UPDATE students SET assigned_supervisor = '{$supervisors[$supervisorId]['email']}' WHERE id = $studentId";
        $result = $conn->query($query);

        if ($result) {
            echo "<script type='text/javascript'>
                    alert('Successfully assigned');
                    window.location.href = 'students.php'; // Redirect to students.php
                  </script>";
        } else {
            echo "Error: " . $conn->error;
        }
    }
}

// Fetch a single student from the database based on the student ID
if (isset($_GET['id'])) {
    $studentId = $_GET['id'];
    $fetchQuery = "SELECT id, fname, lname, assigned_supervisor FROM students WHERE id = $studentId";
    $fetchResult = $conn->query($fetchQuery);
    $student = $fetchResult->fetch_assoc();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assign Supervisor</title>
</head>
<body>
    <h2>Assign Supervisor</h2>
    
    <!-- Display information for the selected student -->
    <?php if (isset($student)) { ?>
        <div>
            <p>Student ID: <?php echo $student['id']; ?></p>
            <p>Name: <?php echo $student['fname'] . ' ' . $student['lname']; ?></p>

            <?php if ($student['assigned_supervisor']) { ?>
                <p>This student is already assigned to a supervisor. Assigned Supervisor: <?php echo $student['assigned_supervisor']; ?></p>
            <?php } else { ?>
                <!-- Form for data insertion with student ID -->
                <form method="post" action="assignsupervisor.php">
                    <input type="hidden" name="id" value="<?php echo $student['id']; ?>">
                    <label for="supervisor">Select supervisor:</label>
                    <select name="supervisor" required>
                        <?php foreach ($supervisors as $index => $supervisor) { ?>
                            <option value="<?php echo $index; ?>">
                                <?php echo $supervisor['email']; ?>
                            </option>
                        <?php } ?>
                    </select>
                    <input type="submit" name="submit" value="Assign">
                </form>
            <?php } ?>
        </div>
    <?php } else { ?>
        <p>Supervisor assigned to the student.</p>
    <?php } ?>
</body>
</html>
