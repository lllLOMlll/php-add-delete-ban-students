<?php
session_start();
include "dbConnection.php";


// Query to get all students
$query = $db->query("SELECT * FROM herzing_student ORDER BY student_id DESC");
$students = $query->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Online Class Student Name</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">  
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<?php if (isset($_SESSION['msg'])) : ?>
						<div class="alert alert-warning alert-dismissible fade show mt-5" role="alert">
							<strong>Success</strong> <?= $_SESSION['msg'] ?>
							<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
					<?php endif; ?>
					
					
					
					<h2 class="text-center float-start mt-5" id="title">Fictitious Online Class</h2>
					<a class="btn btn-success float-end mt-5" href="#" data-bs-toggle="modal" data-bs-target="#addModal">Add Student</a>
				</div>
				<div class="row clearfix">
					<div class="col-md-12">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>ID</th>
									<th>Firstname</th>
									<th>Lastname</th>
									<th>Age</th>
									<th>Gender</th>
									<th>Location</th>
									<th>Program</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($students as $student) :?>
									<tr>
										<td><?= $student['student_id'] ?></td>
										<td><?= $student['student_firstname'] ?></td>
										<td><?= $student['student_lastname'] ?></td>
										<td><?= $student['student_age'] ?></td>
										<td><?= $student['student_gender'] ?></td>
										<td><?= $student['student_location'] ?></td>
										<td><?= $student['student_program'] ?></td>
										<td>
											<?php if ($student['student_status'] == 1) : ?>
												<span class='badge bg-success bdg'>Active</span>
											<?php else : ?>
												<span class='badge bg-danger bdg'>Inactive</span>
											<?php endif ?>
										</td>
										<td>
											<?php if ($student['student_status'] == '1') : ?>
												<a class="btn btn-warning custom" href="action.php?action=ban&id=<?= $student['student_id'] ?>">Ban</a>
											<?php else: ?>

												<a class="btn btn-secondary custom" href="action.php?action=unban&id=<?= $student['student_id'] ?>">Unban</a>
											<?php endif ?>
											<a class="btn btn-danger" href="action.php?action=delete&id=<?= $student['student_id'] ?>">Delete</a>
										</td>
									</tr>
								<?php endforeach; ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<!-- The Modal -->
		<div class="modal" id="addModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">Add New Student</h4>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<!-- Modal body -->
					<div class="modal-body">
						<form action="action.php" method="post">
							<div class="form-group mb-3">
								<label for="fname" class="form-label">Firstname:</label>
								<input type="text" name="firstname" class="form-control" placeholder="Enter firstname" id="fname">
							</div>
							<div class="form-group mb-3">
								<label for="lname" class="form-label">Lastname:</label>
								<input type="text" name="lastname" class="form-control" placeholder="Enter lastname" id="lname">
							</div>
							<div class="form-group mb-3">
								<label for="age" class="form-label">Age:</label>
								<input type="number" name="age" class="form-control" placeholder="Enter age" id="age">
							</div>
							<div class="form-group mb-3">
								<label for="gender" class="form-label">Gender:</label>
								<select name="gender" id="gender" class="form-control">
									<option value="">Select Gender</option>
									<option>Male</option>
									<option>Female</option>
									<option>Other</option>
								</select>
							</div>
							<div class="form-group mb-3">
								<label for="location" class="form-label">Location:</label>
								<input type="text" name="location" class="form-control" placeholder="Enter location" id="location">
							</div>
							<div class="form-group mb-3">
								<label for="program" class="form-label">Program:</label>
								<select name="program" id="program" class="form-control">
									<option value="">Select Program</option>
									<option>Programming</option>
									<option>Accounting</option>
									<option>ECE</option>
									<option>Networking</option>
									<option>ATP</option>
									<option>Interior Design</option>
									<option>Business</option>
									<option>CAD</option>
									<option>IT Support</option>
								</select>
							</div>
							<div class="form-group mb-3">
								<input type="submit" name="addStudent" value="Add Student" class="form-control btn btn-success">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="js/bootstrap.bundle.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>
<?php unset($_SESSION['msg']) ?>
