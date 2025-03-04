<?php
$host = 'localhost'; // Database host
$db = 'ott'; // Database name
$user = 'root'; // Database username
$pass = ''; // Database password

// Create a connection to the database
$conn = new mysqli($host, $user, $pass, $db);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form input
    $title = $_POST['title'];
    $description = $_POST['description'];
    $genre = $_POST['genre'];
    $link = $_POST['link'];
    $detail = $_POST['detail'];

    // Debugging: Check if form data is being passed correctly
    // var_dump($_POST); exit;

    // Handle the file upload
    $poster = null;
    if (isset($_FILES['poster']) && $_FILES['poster']['error'] == 0) {
        $fileTmpPath = $_FILES['poster']['tmp_name'];
        $fileName = $_FILES['poster']['name'];
        $fileSize = $_FILES['poster']['size'];
        $fileType = $_FILES['poster']['type'];
        $fileExtension = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));

        // Check if the file is an image
        $allowedExtensions = ['jpg', 'jpeg', 'png', 'gif'];
        if (in_array($fileExtension, $allowedExtensions)) {
            // Generate a new unique file name to prevent overwriting
            $newFileName = uniqid('poster_', true) . '.' . $fileExtension;
            $uploadDir = 'uploads/'; // Make sure this directory exists and is writable

            // Move the file to the server
            if (move_uploaded_file($fileTmpPath, $uploadDir . $newFileName)) {
                $poster = $newFileName; // Save the file name to the database
            } else {
                echo "<p class='text-red-500'>Error uploading file.</p>";
            }
        } else {
            echo "<p class='text-red-500'>Invalid file type. Only JPG, JPEG, PNG, GIF allowed.</p>";
        }
    }

    // Debugging: Check if all required data is ready to be inserted into the database
    // var_dump($title, $description, $genre, $poster, $link, $detail); exit;

    // Prepare and bind SQL statement
    $stmt = $conn->prepare("INSERT INTO movies (title, description, genre, poster, link, detail) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssss", $title, $description, $genre, $poster, $link, $detail);

    // Execute the statement
    if ($stmt->execute()) {
        echo "<p class='text-green-500'>Movie added successfully!</p>";
    } else {
        // Output any errors if the statement fails
        echo "<p class='text-red-500'>Error: " . $stmt->error . "</p>";
    }

    // Close the statement
    $stmt->close();
}

// Close the connection
$conn->close();
?>
