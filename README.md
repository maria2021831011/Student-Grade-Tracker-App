# 📚 Student Grade Tracker App

A simple and responsive Flutter application that helps students keep track of their academic performance by adding subjects, viewing grades, and checking an overall summary.

This project was developed as part of **Module 5 Assignment** using Flutter and Provider State Management.

---
demo link     https://drive.google.com/file/d/1kfPGJ3lUp8y_Me2tVU2qzSE6mu3_z-jg/view?usp=drivesdk
## ✨ Features

- ➕ Add new subjects with marks
- ✅ Form validation
    - Subject name cannot be empty
    - Marks must be between 0 and 100
- 📋 View all subjects in a dynamic list
- 🏆 Automatic grade calculation
    - A (80+)
    - B (65–79)
    - C (50–64)
    - F (Below 50)
- 🗑️ Swipe to delete subjects using Dismissible
- 📊 Live summary
    - Total subjects
    - Average marks
    - Overall grade
- 🌙 Light/Dark theme
- 💾 Theme preference saved using SharedPreferences

---

## 🛠️ Technologies Used

- Flutter
- Dart
- Provider
- Shared Preferences
- Material Design

---

## 📦 Packages

```yaml
provider
shared_preferences
```

---

## 📱 Screens

### 1️⃣ Add Subject

- Add subject name
- Enter subject mark
- Form validation
- Save subject

---

### 2️⃣ Subject List

- Displays all subjects
- Shows:
    - Subject Name
    - Mark
    - Grade
- Swipe left/right to delete

---

### 3️⃣ Summary

Displays:

- Total Subjects
- Average Marks
- Overall Grade

Updates automatically whenever data changes.

---

## 🧠 Concepts Used

- StatelessWidget
- StatefulWidget
- Provider State Management
- ChangeNotifier
- Consumer
- ListView.builder
- Dismissible
- BottomNavigationBar
- ThemeData
- SharedPreferences
- Form Validation
- Getter
- Private Variables
- Object-Oriented Programming (OOP)

---

## 📂 Project Structure

```
lib
│
├── models
│   └── subject.dart
│
├── providers
│   ├── navigation_provider.dart
│   ├── subject_provider.dart
│   └── theme_provider.dart
│
├── screens
│   ├── add_subject_screen.dart
│   ├── subject_list_screen.dart
│   ├── summary_screen.dart
│   └── navigation_screen.dart
│
├── services
│   └── shared_pre_service.dart
│
├── theme
│   └── app_theme.dart
│
└── main.dart
```

---

## 🚀 Getting Started

### Clone the repository

```bash
git clone https://github.com/maria2021831011/Student-Grade-Tracker-App.git
```

### Navigate to the project

```bash
cd student-grade-tracker
```

### Install dependencies

```bash
flutter pub get
```

### Run the application

```bash
flutter run
```

---

## 🎯 Assignment Requirements Covered

- ✔ Subject class with private `_mark`
- ✔ Grade getter
- ✔ Provider State Management
- ✔ BottomNavigationBar
- ✔ Form Validation
- ✔ ListView.builder
- ✔ Dismissible
- ✔ `.map()` usage
- ✔ `.where()` usage
- ✔ Light/Dark Theme
- ✔ SharedPreferences
- ✔ No `setState()` used
- ✔ Responsive UI

---

## 👩‍💻 Author

**Maria **

Flutter Developer | SWE Student

GitHub: https://github.com/maria2021831011/Student-Grade-Tracker-App.git

---

## ⭐ Thank You

Thank you for checking out this project! If you find it helpful, consider giving it a ⭐ on GitHub.