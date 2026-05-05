import SwiftUI

struct HomeView: View {
    @EnvironmentObject var vm: GameViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("BrainDrop")
                    .font(.largeTitle)
                    .padding()
                
                List(vm.decks) { deck in
                    NavigationLink(deck.name) {
                        BattleView(deck: deck)
                    }
                }
            }
        }
    }
}
