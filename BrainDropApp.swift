import SwiftUI

@main
struct BrainDropApp: App {
    @StateObject var vm = GameViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(vm)
        }
    }
}
