<?php
// Set the response type to JSON
header('Content-Type: application/json');

// Database configuration
$host = 'localhost'; // Database host
$db = 'ott'; // Database name
$user = 'root'; // Database username
$pass = ''; // Database password

// Create a connection to the database
$conn = new mysqli($host, $user, $pass, $db);

// Check the connection
if ($conn->connect_error) {
    die(json_encode(['error' => 'Connection failed: ' . $conn->connect_error]));
}

// Check if a 'movie' parameter is passed in the URL
if (isset($_GET['movie'])) {
    $movie_id = $_GET['movie'];

    // Query to fetch the details of a specific movie
    $sql = "SELECT movie_id, title, description, genre, poster, link, detail FROM movies WHERE movie_id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $movie_id);
    $stmt->execute();
    $result = $stmt->get_result();

    // Check if the movie exists
    if ($result->num_rows > 0) {
        $movie = $result->fetch_assoc();

        // Return the movie details as JSON
        echo json_encode([
            'success' => true,
            'movie' => [
                'movie_id' => $movie['movie_id'],
                'title' => $movie['title'],
                'description' => $movie['description'],
                'genre' => $movie['genre'],
                'poster' => $movie['poster'],
                'link' => $movie['link'],
                'detail' => $movie['detail']
            ]
        ]);
    } else {
        // If no movie is found with the given ID, return an error message
        echo json_encode(['success' => false, 'message' => 'Movie not found']);
    }

} else {
    // Query to fetch all movies with only movie_id, poster, and genre
    $sql = "SELECT movie_id, poster, genre FROM movies";
    $result = $conn->query($sql);

    // Check if there are results
    if ($result->num_rows > 0) {
        $movies = [];

        // Fetch all rows and store them in the $movies array
        while ($row = $result->fetch_assoc()) {
            $movies[] = [
                'movie_id' => $row['movie_id'],
                'poster' => $row['poster'],
                'genre' => $row['genre']
            ];
        }

        // Return movies data as JSON
        echo json_encode(['success' => true, 'movies' => $movies]);
    } else {
        // If no movies are found, return an empty result
        echo json_encode(['success' => false, 'message' => 'No movies found']);
    }
}

// Close the connection
$conn->close();
?>
