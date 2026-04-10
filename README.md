# 💪 Fitora - Fitness Tracker & BMI Analyzer

Fitora is a smart health companion currently in its **initial development phase**, designed to help users monitor their fitness and overall well-being.

The app focuses on providing a clean and intuitive interface to track daily activities, calculate BMI, and explore basic health tips.

---

## 🚧 Project Status

⚠️ This project is in the **early stage of development**.  
More advanced features, performance improvements, and integrations are planned for future updates.

---

## 🚀 Current Features

- **BMI Calculator**
  - Calculates Body Mass Index
  - Displays health category (Underweight, Normal, Overweight, Obese)

- **Activity Tracker**
  - Add and manage daily workouts
  - Mark activities as completed

- **Fitness Tips**
  - Basic list of health and wellness tips

- **Theme Customization**
  - Light and Dark mode support

- **Modern UI**
  - Built with Material 3
  - Clean layout and smooth interactions

---

## 🔮 Upcoming Features (Planned)

- User progress analytics 📊  
- Integration with fitness APIs / wearables  
- Advanced activity tracking  
- Notifications & reminders  
- Cloud sync / data backup  
- AI-based health suggestions  

---

## 🛠️ Tech Stack

- **Flutter & Dart**
- **State Management**: setState
- **Theming**: ThemeData & ColorScheme
- **Navigation**: Named Routes, Bottom Navigation Bar, Drawer
- **Animations**: Hero animations, AnimatedContainer

---

## 🏗️ Project Structure


lib/
│── models/
│ ├── activity.dart
│ └── tip.dart
│
│── screens/
│ ├── bmi_screen.dart
│ ├── activity_tracker_screen.dart
│ ├── tips_screen.dart
│ ├── tip_detail_screen.dart
│ ├── settings_screen.dart
│ └── about_screen.dart
│
└── main.dart


---

## 🏁 Getting Started

### 📥 Installation

```bash
git clone https://github.com/yourusername/fitora.git
cd fitora
flutter pub get
flutter run
