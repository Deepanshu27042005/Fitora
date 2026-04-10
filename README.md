Fitora - Fitness Tracker & BMI Analyzer
Fitora is a smart health companion designed to help users monitor their fitness and overall well-being. The app provides a clean, user-friendly interface to track daily activities, calculate Body Mass Index (BMI), and access health-improving tips.
🚀 Key Features
•
BMI Calculator: Calculate your Body Mass Index with dynamic suggestions based on your health status (Underweight, Normal, Overweight, Obese).
•
Activity Tracker: Track your daily workouts with an interactive list. Mark activities as completed with smooth animations.
•
Fitness Tips: Explore a curated list of health and wellness tips with high-quality visuals and smooth transitions using Hero animations.
•
Theme Customization: Toggle between Light and Dark modes via the Settings menu.
•
Modern UI/UX: Built using Material 3, Google Fonts (Poppins), and smooth transitions for a premium feel.
🛠️ Tech Stack & Concepts
•
Flutter & Dart: The core framework and language.
•
State Management: setState for reactive UI updates (BMI calculations and activity toggling).
•
Theming: Centralized theme management with ThemeData and ColorScheme.
•
Navigation: Implemented using Named Routes, Bottom Navigation Bar, and a Side Drawer.
•
Animations: Hero animations for images and AnimatedContainer for list items.
🏗️ Project Structure
•
lib/models/: Data classes (Activity, Tip).
•
lib/screens/: Feature screens (BMI, Activity Tracker, Tips, About, Settings).
•
lib/main.dart: Entry point, routing, and global theme state.
🏁 Getting Started
Installation
1.
Clone the repository:
Shell Script
git clone https://github.com/yourusername/fitora.git
2.
Install dependencies:
Shell Script
flutter pub get
3.
Run the app:
Shell Script
flutter run
2. Project Explanation (File-by-File)
If you need to explain this to someone else, here is a concise summary:
•
main.dart: The "brain" of the app. It handles the Light/Dark theme switching and sets up the main navigation structure (the Bottom Bar and Drawer).
•
models/:
◦
activity.dart: Stores the data for an exercise (name, duration, and whether it's done).
◦
tip.dart: Stores the data for a health tip (ID, title, image, and description).
•
screens/:
◦
bmi_screen.dart: Takes user input, calculates the BMI, and displays a color-coded health suggestion.
◦
activity_tracker_screen.dart: Shows a list of exercises. It uses a "Bottom Sheet" to add new ones and "AnimatedContainer" to highlight finished tasks.
◦
tips_screen.dart: A visual list of tips. It uses "Hero" animations to make images smoothly "grow" when you tap them.
◦
tip_detail_screen.dart: The full view of a tip after clicking it.
◦
settings_screen.dart: Contains the switch to change the app's theme.
◦
about_screen.dart: Displays the app description and version information.
