import SwiftUI

struct BattleView: View {
    @EnvironmentObject var vm: GameViewModel
    var deck: Deck
    
    @State private var answer = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            if let enemy = vm.currentEnemy {
                Text("Enemy: \(enemy.name)")
                Text("HP: \(enemy.hp)")
            }
            
            if let card = vm.currentCard {
                Text(card.question)
                    .font(.title)
            }
            
            TextField("Answer", text: $answer)
                .textFieldStyle(.roundedBorder)
            
            Button("Submit") {
                vm.answer(answer, deck: deck)
                answer = ""
            }
            
            Text("Player HP: \(vm.player.hp)")
            Text("Gold: \(vm.player.gold)")
        }
        .padding()
        .onAppear {
            vm.startBattle(deck: deck)
        }
    }
}
