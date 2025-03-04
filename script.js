  // Get movie ID from the URL (for the details page)
  const urlParams = new URLSearchParams(window.location.search);
  const movieId = urlParams.get('movie');

  fetch('http://localhost/ott/api.php')
      .then(response => response.json())
      .then(data => {
          if (data.success) {
              const movieScroller = document.getElementById('movie-scroller');
              const trendingScroller = document.getElementById('movie-scroller-trending');

              // Function to shuffle the movies array randomly
              function shuffleArray(arr) {
                  for (let i = arr.length - 1; i > 0; i--) {
                      const j = Math.floor(Math.random() * (i + 1));
                      [arr[i], arr[j]] = [arr[j], arr[i]];
                  }
              }

              // Create independent shuffled arrays for each section
              const newReleaseMovies = [...data.movies]; // Copy the movies array
              const trendingNowMovies = [...data.movies]; // Copy the movies array

              // Shuffle both arrays independently
              shuffleArray(newReleaseMovies);
              shuffleArray(trendingNowMovies);

              // Loop through each shuffled movie array and create movie cards for both "New Release" and "Trending Now"
              newReleaseMovies.slice(0, 10).forEach(movie => createMovieCard(movie, movieScroller)); // First 10 for New Release
              trendingNowMovies.slice(0, 10).forEach(movie => createMovieCard(movie, trendingScroller)); // First 10 for Trending Now

              // Function to create a movie card
              function createMovieCard(movie, container) {
                  // Create movie card elements
                  const movieCard = document.createElement('div');
                  movieCard.classList.add('movie-card');

                  // Add HDR 4K label
                  const label = document.createElement('div');
                  label.classList.add('label-name');
                  label.textContent = 'HDR 4K';
                  movieCard.appendChild(label);

                  // Create movie poster image
                  const moviePoster = document.createElement('img');
                  moviePoster.src = `admin/uploads/${movie.poster}`; // Replace with correct path
                  moviePoster.alt = movie.title;
                  moviePoster.loading = 'lazy';

                  // Wrap the image with a link to redirect to the movie page
                  const movieLink = document.createElement('a');
                  movieLink.href = `/ott/player.html?movie=${movie.movie_id}`; // Redirect to the movie detail page
                  movieLink.appendChild(moviePoster);

                  // Add watermark
                  const watermark = document.createElement('div');
                  watermark.classList.add('watermark');
                  const watermarkImg = document.createElement('img');
                  watermarkImg.src = 'logo/mmplay-white.svg'; // MM Play logo
                  watermarkImg.alt = 'MM Play logo';
                  watermarkImg.loading = 'lazy';
                  watermark.appendChild(watermarkImg);

                  // Add watch button wrapped in a link to redirect to the movie page
                  const watchBtnLink = document.createElement('a');
                  watchBtnLink.href = `/ott/player.html?movie=${movie.movie_id}`; // Redirect to the movie detail page

                  const watchBtn = document.createElement('div');
                  watchBtn.classList.add('watch-btn');
                  const watchBtnImg = document.createElement('img');
                  watchBtnImg.src = 'icons/play-btn.svg';
                  watchBtnImg.alt = 'Play Button';
                  watchBtnImg.loading = 'lazy';
                  watchBtn.appendChild(watchBtnImg);
                  watchBtnLink.appendChild(watchBtn); // Wrap the play button with the link

                  // Add the watermark, watch button, and movie link to the movie card
                  movieCard.appendChild(movieLink);
                  movieCard.appendChild(watermark);
                  movieCard.appendChild(watchBtnLink); // Add wrapped play button to card

                  // Append the movie card to the container (either New Release or Trending Now)
                  container.appendChild(movieCard);
              }
          }
      })

  // Fetch and display movie details if movie_id is present in the URL
  if (movieId) {
      fetch(`http://localhost/ott/api.php?movie=${movieId}`)
          .then(response => response.json())
          .then(data => {
              if (data.success) {
                  const movie = data.movie;

                  // Update the video player with the YouTube link
                  const videoPlayer = document.getElementById('videoPlayer');
                  videoPlayer.src = `https://www.youtube.com/embed/${movie.link}?rel=0&autoplay=1`;

                  // Update the movie title
                  const movieTitle = document.getElementById('movieTitle');
                  movieTitle.textContent = movie.title;

                  // Update the movie description
                  const description = document.getElementById('description');
                  description.textContent = movie.description;

                  // Update additional details like genre or specific detail
                  const movieDetail = document.getElementById('movieDetail');
                  movieDetail.textContent = movie.detail;

                  // No movie poster will be added here now
              } else {
                  console.error('Error fetching movie data:', data.message);
                  alert('Could not load movie details.');
              }
          })
          .catch(error => {
              console.error('Error fetching movie details:', error);
              alert('Something went wrong. Please try again later.');
          });
  } else {
  }

  // Call the function to populate the New Releases section
  populateNewReleases();