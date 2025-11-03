/* Course: MAD201
 Assignment: 3
 Student: Jennyfer R. Parmar 
 ID: A00201240
 File: lib/models/movie.dart
 Description: Defines the Movie model used across the app.*/
import 'package:excersize1/models/movie.dart';

 /// Represents a movie item used in the Movie Explorer application.
 
class Movie {
/// Movie title (e.g., "Inception").
final String title;
/// Genre or category (e.g., "Sci-Fi").
final String genre;
/// Release year (e.g., 2010).
final int year;
/// Short description displayed on the detail screen.
final String description;
/// Local asset path for the poster image (e.g., `assets/posters/inception.jpg`).
final String imagePath;
/// Whether the movie is marked as favorite.
bool isFavorite;


/// Creates a [Movie] instance.
Movie({
required this.title,
required this.genre,
required this.year,
required this.description,
required this.imagePath,
this.isFavorite = false,
});


/// Toggles the favorite status of this movie.
void toggleFavorite() { isFavorite = !isFavorite;
}
}