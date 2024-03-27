
<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $selectedUser = isset($_POST['user']) ? $_POST['user'] : '';

    
    switch ($selectedUser) {
        case 'admin':
            header('Location: ../admin');
            exit();
        case 'industrialSpv':
            header('Location: ../industrial');
            exit();
        case 'parent':
                header('Location: ../parent');
                exit();
                
        case 'student':
                    header('Location: ../student');
                    exit();
            
        case 'universitySpv':
            header('Location: ../university');
            exit();
        default:
            echo "Invalid user selection";
            break;
    }
} else {
    echo "Invalid request";
}
?>
