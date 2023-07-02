import SwiftUI

struct FarisView: View {
    var body: some View {
        ZStack {
            Color(red: 74/255, green: 85/255, blue: 162/255)
            
            VStack {
                ZStack {
                    RadialGradient(colors: [.blue, .black, .cyan,             Color(red: 74/255, green: 85/255, blue: 162/255)], center: .center, startRadius: 0, endRadius: 190)
                    
                    Image("FarisPortrait")
                        .resizable()
                        .scaledToFit()
                        .mask(Circle())
                }.frame(maxWidth: 500, maxHeight: 400)
                
                Text("Faris Ansari")
                    .font(
                        .system(.largeTitle)
                            .weight(.heavy)
                    )
                    .foregroundColor(Color(red: 197/255, green: 223/255, blue: 248/255))
            }
        }.ignoresSafeArea()
    }
}

struct FarisView_Previews: PreviewProvider {
    static var previews: some View {
        FarisView()
    }
}
