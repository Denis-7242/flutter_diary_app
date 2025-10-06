## 📝 My Diary – Vibrant Edition

A **beautiful offline diary and note-taking app** built with **Flutter** and **Hive** for local storage.  
It features a vibrant, modern design with smooth animations, customizable themes, and a simple yet elegant user experience.

---

## Table of Contents

- [Features](#-features)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [How It Works](#-how-it-works)
- [Future Enhancements](#-future-enhancements)
- [Author](#-author)

---

### 🌟 Features

- 🌓 **Dark Mode by Default** – launches in dark mode for a comfortable look.  
- 💾 **Offline Storage** – notes are stored locally using the Hive database (no internet required).  
- 🪶 **Add, Edit, Delete Notes** – manage your diary entries easily.  
- 🔍 **Search Notes** – quickly find any note by title or content.  
- 🎨 **Vibrant UI** – gradient headers, modern typography (Poppins), and smooth animations.  
- ⚙️ **Persistent Theme Toggle** – switch between light and dark modes anytime, and your choice is saved.  

---

### 🛠️ Tech Stack

| Layer | Technology |
|-------|-------------|
| **Framework** | Flutter |
| **Language** | Dart |
| **Local Database** | Hive |
| **State Management** | Provider |
| **Fonts** | Google Fonts (Poppins) |

---

### 📁 Project Structure

lib/  
┣ 📂 models/ # Hive model classes  
┣ 📂 db/ # Hive boxes (database setup)  
┣ 📂 screens/ # UI screens (Home, Add Note)  
┣ 📂 theme/ # Theme provider (handles dark/light mode)  
┗ main.dart # Entry point

---

### 🚀 Getting Started

#### 1️⃣ Clone the Repository
```bash
git clone https://github.com/Denis-7242/flutter_diary_app.git
cd flutter_diary_app
```

---

#### 2️⃣ Install Dependencies
```bash
flutter pub get
```

---

#### 3️⃣ Run the App
```bash
flutter run
```

---

### ⚡ How It Works

All notes are stored locally in the device’s storage using Hive boxes.

When you toggle the theme, your preference is saved for the next session.

The UI uses Material 3 components with gradient accent colors.

---

### 🧠 Future Enhancements

- 🔐 Biometric Lock (PIN or Fingerprint)
- ☁️ Cloud Backup / Sync Option
- 🗓️ Note Categorization by Date or Tags
- 📸 Add Image Attachments

---

### 💻 Author

Denis Murithi  
👤 GitHub: [@Denis-7242](https://github.com/Denis-7242)

🗓️ Built with Flutter & ❤️ by Denis in 2025

