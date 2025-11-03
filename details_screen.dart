/*Course: MAD201
 Assignment: 3
 Student: Jennyfer Parmar 
 ID: A00201240
 File: lib/screens/detail_screen.dart
 Description: Full detail page for a selected movie including favorite toggle.*/

 import 'package:flutter/material.dart';
 import 'package:excersize1/models/movie.dart';
 /// Displays detailed information about a [Movie].
class MovieDetailScreen extends StatefulWidget {
/// The movie to display.
final Movie movie;


/// Callback to toggle favorite state in the parent.
final void Function(Movie) onToggleFavorite;


const MovieDetailScreen({
super.key,
required this.movie,
required this.onToggleFavorite,
});
@override
State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}


class _MovieDetailScreenState extends State<MovieDetailScreen> {
@override
Widget build(BuildContext context) {
final movie = widget.movie;
return Scaffold(
appBar: AppBar(title: Text(movie.title)),
// Drawer is accessible by navigating back to main; optional to include here too.
body: SingleChildScrollView(
padding: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
ClipRRect(
borderRadius: BorderRadius.circular(12),
child: Image.asset(movie.imagePath, fit: BoxFit.cover),
),
const SizedBox(height: 16),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
movie.title,
style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
),
const SizedBox(height: 4),
Text('${movie.genre} • ${movie.year}'),
],
),
),
IconButton(
tooltip: movie.isFavorite ? 'Remove from favorites' : 'Add to favorites',
icon: Icon(movie.isFavorite ? Icons.star : Icons.star_border),
onPressed: () {
setState(() {
widget.onToggleFavorite(movie);
});
},
),
],
),
const SizedBox(height: 12),
Text(
'Description',
style: Theme.of(context).textTheme.titleMedium,
),
const SizedBox(height: 8),
Text(movie.description),
],
),
),
);
}
}