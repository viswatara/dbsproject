<?php
// Check if the form was submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the edited values
    $edited_email = $_POST['email'];
    $edited_phone = $_POST['phone'];
    
    // Update the user's information in the database
    // ...

    // Reload the page to show the updated information
    header('Location: ' . $_SERVER['PHP_SELF']);
    exit;
}

// Check if the user is editing their email or phone number
$editing = false;
if (isset($_GET['edit'])) {
    $edit_field = $_GET['edit'];
    if ($edit_field === 'email' || $edit_field === 'phone') {
        $editing = true;
    }
}

// Get the user's information from the database
$name = 'John Doe';
$semester = 'Spring 2023';
$email = 'johndoe@example.com';
$phone =
