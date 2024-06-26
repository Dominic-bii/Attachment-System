<?php
include("../sessions.php");
include("../../../includes/dbconnect.php");

$mail = $_SESSION["email"];
$conn = DBconnect();
$sql = "SELECT * FROM students WHERE email='$mail'";
$query = mysqli_query($conn, $sql);
$get = mysqli_fetch_array($query);

$id = $get['id'];
$fname = $get['fname'];
$lname = $get['lname'];
$email = $get['email'];
$adm = $get['adm'];
$course = $get['course'];

$company_name = $get['company_name'];
$company_address = $get['company_address'];
$department = $get['department'];
$supervisor_name = $get['supervisor_name'];
$duration_from = $get['duration_from'];
$duration_to = $get['duration_to'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Student</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../../plugins/fontawesome-free/css/all.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="../../../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../../dist/css/adminlte.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../../../plugins/daterangepicker/daterangepicker.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="../index.php" class="nav-link">Home</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="../../../index.php" class="brand-link">
      <img src="../../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Logout</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="../index.php" class="nav-link ">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="profile.php" class="nav-link active">
              <i class="nav-icon fas fa-user"></i>
              <p>Profile</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="logbook.php" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>logbook</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="feedback.php" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>View Feedbacks</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="request.php" class="nav-link">
              <i class="nav-icon fas fa-plus-square"></i>
              <p>Request Leave</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="universitysupervisors.php" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>Assigned Supervisor</p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Student Profile</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Profile</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid mt--6">
        <div class="row">
          <div class="col-xl-4 order-xl-2">
            <div class="card card-profile">
              <img src="../assets/img/theme/img-1-1000x600.jpg" alt="Image placeholder" class="card-img-top">
              <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
                <div class="d-flex justify-content-between"></div>
              </div>
              <div class="card-body pt-0">
                <div class="row">
                  <div class="col">
                    <div class="card-profile-stats d-flex justify-content-center">
                      <div></div>
                    </div>
                  </div>
                </div>
                <div class="text-center">
                  <h5 class="h3">
                    <?php echo $fname . " " . $lname; ?><span class="font-weight-light"></span>
                  </h5>
                  <div class="h5 font-weight-300">
                    <h5 class="h3">
                      <?php echo $adm; ?><span class="font-weight-light"></span>
                    </h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-8 order-xl-1">
            <div class="card">
              <div class="card-header">
                <div class="row align-items-center">
                  <div class="col-8">
                    <h5 class="mb-0">Personal Information</h5>
                  </div>
                  <div class="col-4 text-right"></div>
                </div>
              </div>
              <div class="card-body">
                <form action="" method="post">
                  <div class="pl-lg-4">
                    <div class="row">
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label" for="input-username">Firstname</label>
                          <input type="text" id="input-username" class="form-control" placeholder="Username" value="<?php echo $fname; ?>" name="firstname">
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label" for="input-email">Lastname</label>
                          <input type="text" id="input-email" class="form-control" value="<?php echo $lname; ?>" name="lastname">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label" for="input-first-name">Course</label>
                          <input type="text" id="input-first-name" class="form-control" placeholder="First name" value="<?php echo $course; ?>" name="course2" disabled>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label" for="input-last-name">Admission Number</label>
                          <input type="text" id="input-last-name" class="form-control" placeholder="Last name" value="<?php echo $adm; ?>" name="adm" disabled>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label" for="input-email">Company Attached</label>
                          <input type="text" id="input-email" class="form-control" value="<?php echo $company_name; ?>" name="company_name2">
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label" for="input-username">Company Address</label>
                          <input type="text" id="input-username" class="form-control" placeholder="Username" value="<?php echo $company_address; ?>" name="company_address2">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label" for="input-email">Department</label>
                          <input type="text" id="input-email" class="form-control" value="<?php echo $department; ?>" name="department2">
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label" for="input-username">Supervisor Name</label>
                          <input type="text" id="input-username" class="form-control" placeholder="Username" value="<?php echo $supervisor_name; ?>" name="supervisor_name2" disabled>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label" for="input-email">Duration From</label>
                          <input type="date" id="input-email" class="form-control" value="<?php echo $duration_from; ?>" name="duration_from2" disabled>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label class="form-control-label" for="input-email">Duration To</label>
                          <input type="date" id="input-email" class="form-control" value="<?php echo $duration_to; ?>" name="duration_to2" disabled>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-lg-6">
                        <div class="form-group">
                          <input type="submit" class="form-control btn-primary" name="update" value="Update Profile">
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['update'])) {
          $firstname = $_POST['firstname'];
          $lastname = $_POST['lastname'];
          $adm = $_POST['adm'];
          $course = $_POST['course'];
          $company_name = $_POST['company_name2'];
          $company_address = $_POST['company_address2'];
          $department = $_POST['department2'];
          $supervisor_name = $_POST['supervisor_name2'];
          $duration_from = $_POST['duration_from2'];
          $duration_to = $_POST['duration_to2'];
      
          // Update SQL Query
          $update_sql = "UPDATE students SET fname='$firstname', lname='$lastname', email='$email', course='$course', company_name='$company_name', company_address='$company_address', department='$department', supervisor_name='$supervisor_name', duration_from='$duration_from', duration_to='$duration_to' WHERE adm='$adm'";
          $update_query = mysqli_query($conn, $update_sql);
      
          if ($update_query) {
              echo "<script>alert('Success profile updated');</script>";
          } else {
              echo "<script>alert('Unable to update profile');</script>";
          }
        }
        ?>
      </div>
      <!-- Footer -->
      <footer class="footer pt-0"></footer>
    </div>
    <!-- /.content-wrapper -->
  </div>
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
   
<!-- Control sidebar content goes here -->
</aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../../dist/js/adminlte.min.js"></script>
</body>
</html>
