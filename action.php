<?php
session_start();
include "dbConnection.php";

if (isset($_POST['addStudent']) && !empty($_POST['addStudent'])) {
    unset($_POST['addStudent']);

    // Query to add into database
    $query = $db->prepare("INSERT INTO herzing_student (student_firstname, student_lastname, student_age, student_gender, student_location, student_program) VALUES (?, ?, ?, ?, ?, ?)");

    $query->execute(array($_POST['firstname'], $_POST['lastname'], $_POST['age'], $_POST['gender'], $_POST['location'], $_POST['program']));

    // Success message
    $_SESSION['msg'] = $_POST['firstname'] . " " . $_POST['lastname'] . " has been added successfully";
    header("location: index.php");

    // BANNING
} elseif (isset($_GET['action']) && $_GET['action'] == 'ban' && isset($_GET['id'])) {
    $query = $db->prepare("UPDATE herzing_student SET student_status = 0 WHERE student_id = ?;");
    $query->execute(array($_GET['id']));

    // Success message
    $_SESSION['msg'] = "Student #" . $_GET['id'] . " has been banned successfully";
    header("location: index.php");

    // UNBANNING
} elseif (isset($_GET['action']) && $_GET['action'] == 'unban' && isset($_GET['id'])) {
    $query = $db->prepare("UPDATE herzing_student SET student_status = 1 WHERE student_id = ?;");
    $query->execute(array($_GET['id']));

    // Success message
    $_SESSION['msg'] = "Student #" . $_GET['id'] . " has been unbanned successfully";
    header("location: index.php");

    // DELETE
} elseif (isset($_GET['action']) && $_GET['action'] == 'delete' && isset($_GET['id'])) {
    $query = $db->prepare("DELETE FROM herzing_student WHERE student_id = ?;");
    $query->execute(array($_GET['id']));

    // Success message
    $_SESSION['msg'] = "Student #" . $_GET['id'] . " has been deleted successfully";
    header("location: index.php");
}
?>
