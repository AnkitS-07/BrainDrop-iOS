# 🧠 BrainDrop

> A SwiftUI flashcard battle game prototype blending learning with RPG mechanics.

BrainDrop makes learning fun! It is a prototype iOS application that combines the repetitive studying aspect of flashcards with engaging RPG battle elements. Answer questions correctly to defeat enemies, earn gold, and progress through encounters.

---

## ✨ Features

- **Flashcard Decks**: Study using customized decks containing multiple questions and answers.
- **RPG Battle System**: 
  - **Player Stats**: Track your Health Points (HP), Gold, and Experience (XP).
  - **Enemy Encounters**: Fight off monsters like Goblins and Orcs. Incorrect answers cost you HP, while correct answers damage the enemy!
- **Continuous Progression**: Defeating an enemy rewards you with gold and automatically spawns the next, tougher opponent.
- **Modern UI**: Built entirely with SwiftUI, ensuring a native and smooth iOS experience.

## 🛠 Tech Stack

- **Framework**: SwiftUI
- **Architecture**: MVVM (Model-View-ViewModel)
- **Reactive Programming**: Combine (for state management via `@Published` and `ObservableObject`)
- **Language**: Swift 5+

## 📂 Project Structure

The project follows a clean MVVM structure:

- `Models/`: Contains the data structures (`Flashcard`, `Deck`, `Player`, `Enemy`).
- `ViewModels/`: Contains the core game logic and state (`GameViewModel`).
- `Views/`: Contains the SwiftUI UI components (`HomeView`, `BattleView`).

## 🚀 Run Locally

To get this project up and running on your local machine:

1. **Clone the repository** (if you haven't already):
   ```bash
   git clone https://github.com/AnkitS-07/BrainDrop-iOS.git
   ```
2. **Open the project**:
   Open `BrainDrop.xcodeproj` in Xcode.
3. **Select the Target**:
   Choose the `BrainDrop` scheme and your preferred iOS Simulator or connected device.
4. **Configure Signing**:
   Navigate to the target settings -> `Signing & Capabilities` and select your Apple Development Team.
5. **Build and Run**:
   Press `Cmd + R` or click the Play button in Xcode to launch the game.

## 📝 Notes & Contributing

- **Development**: Keep all new Swift source files organized under the respective `BrainDrop/` group (Models, Views, ViewModels).
- **Artifacts**: Please ensure build artifacts and Xcode user-specific data are not committed to source control.

---

*Enjoy learning while battling monsters!*
