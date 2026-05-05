import Foundation

struct Flashcard: Identifiable, Codable {
    let id = UUID()
    var question: String
    var answer: String
}

struct Deck: Identifiable, Codable {
    let id = UUID()
    var name: String
    var cards: [Flashcard]
}

struct Player {
    var hp: Int = 100
    var gold: Int = 0
    var xp: Int = 0
}

struct Enemy {
    var name: String
    var hp: Int
    var attack: Int
}
