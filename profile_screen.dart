/*Course: MAD201
 Assignment: 3
 Student: Jennyfer Parmar
 ID: A00201240
 File: lib/screens/profile_screen.dart
 Description: Static profile page with avatar and bio.*/
 import 'package:flutter/material.dart';
 /// Displays static user information for the profile tab.
class ProfileScreen extends StatelessWidget {
const ProfileScreen({super.key});
@override
Widget build(BuildContext context) {
return Center(
child: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
const CircleAvatar(
radius: 48,
backgroundImage: AssetImage('assets/posters/spirited_away.jpg'), // Placeholder avatar
),
const SizedBox(height: 16),
Text('Your Name', style: Theme.of(context).textTheme.titleLarge),
const SizedBox(height: 4),
const Text('your.email@example.com'),
const SizedBox(height: 12),
const Text(
'Movie enthusiast and Flutter learner. I enjoy exploring cross‑platform UI patterns and building polished mobile experiences.',
textAlign: TextAlign.center,
),
],
),
),
);
}
}