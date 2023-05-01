<?php
    session_start();
    include('db_connection.php');

    $semester = mysqli_real_escape_string($conn, $_POST['semester']);
    $course_id = mysqli_real_escape_string($conn, $_POST['course']);
    $marks = mysqli_real_escape_string($conn, $_POST['marks']);
    $max_marks = mysqli_real_escape_string($conn, $_POST['max_marks']);
    $student_id = $_SESSION['student_id'];

    $sql = "INSERT INTO assignment (semester, course_id, student_id, marks, max_marks)
            VALUES ('$semester', '$course_id', '$student_id', '$marks', '$max_marks')";

    if (mysqli_query($conn, $sql)) {
        // Show success message
        echo "<h2>Assignment added successfully!</h2>";
        echo "<p>Click <a href='homepage.php'>here</a> to go back to the homepage.</p>";
    } else {
        // Show error message
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }

    mysqli_close($conn);
?>
