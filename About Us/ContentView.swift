import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MohamedView()
                .tabItem {
                    Label("Mohamed", systemImage: "person")
                }
            
            FarisView()
                .tabItem {
                    Label("Faris", systemImage: "person.circle.fill")
                }
            
            OmarView()
                .tabItem {
                    Label("Omar", systemImage: "person.fill.turn.down")
                }
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
