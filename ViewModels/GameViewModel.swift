import SwiftUI
import Combine

class GameViewModel: ObservableObject {
    @Published var decks: [Deck] = []
    @Published var player = Player()
    @Published var currentEnemy: Enemy?
    @Published var currentCard: Flashcard?
    
    init() {
        loadSampleData()
    }
    
    func loadSampleData() {
        decks = [
            Deck(name: "Starter Deck", cards: [
                Flashcard(question: "2+2", answer: "4"),
                Flashcard(question: "Capital of India", answer: "Delhi")
            ])
        ]
    }
    
    func startBattle(deck: Deck) {
        player.hp = 100
        currentEnemy = Enemy(name: "Goblin", hp: 50, attack: 10)
        drawCard(deck: deck)
    }
    
    func drawCard(deck: Deck) {
        currentCard = deck.cards.randomElement()
    }
    
    func answer(_ input: String, deck: Deck) {
        guard let card = currentCard else { return }
        
        if input.lowercased() == card.answer.lowercased() {
            currentEnemy?.hp -= 20
        } else {
            player.hp -= 10
        }
        
        if currentEnemy?.hp ?? 0 <= 0 {
            player.gold += 10
            currentEnemy = Enemy(name: "Orc", hp: 80, attack: 15)
        }
        
        drawCard(deck: deck)
    }
}
