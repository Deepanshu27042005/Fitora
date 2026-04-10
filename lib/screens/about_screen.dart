import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About App')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xFF00BFA5),
              child: Icon(Icons.fitness_center, size: 60, color: Colors.white),
            ),
            const SizedBox(height: 24),
            Text(
              'Fitness Tracker & BMI Analyzer',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'Fitness Tracker & BMI Analyzer is a smart health companion designed to help users monitor their fitness and overall well-being. The app allows users to track daily activities, calculate Body Mass Index (BMI), and gain meaningful insights into their health status. With a clean and user-friendly interface, it enables individuals to stay aware of their progress and make informed lifestyle decisions. Whether you are starting your fitness journey or maintaining a healthy routine, this app provides a simple and effective way to stay on track.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
            ),
            const SizedBox(height: 40),
            const Text('Version 1.0.0', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
