import SwiftUI

struct FarisView: View {
    var body: some View {
        ZStack {
            Color(red: 74/255, green: 85/255, blue: 162/255)
            
            VStack(spacing: -10) {
                ZStack {
                    RadialGradient(colors: [Color(red: 160/255, green: 191/255, blue: 224/255), Color(red: 74/255, green: 85/255, blue: 162/255)], center: .center, startRadius: 0, endRadius: 190)
                    
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
                
                ZStack {
                    Rectangle()
                        .frame(width: 400, height: 400)
                        .cornerRadius(20)
                        .foregroundColor(Color(red: 120/255, green: 149/255, blue: 203/255))
                    
                    HStack {
                        VStack (alignment: .leading, spacing: 0) {
                            Text("About me...")
                                .font(
                                    .system(.title)
                                    .weight(.bold)
                                )
                                .padding(.top, 30)
                            
                            Text("> Hardcore programmer!\n> Some martial arts\n> Problem solver, even with math!➗\n> Animal lover, rides horses!")
                                .font(.title3)
                                .padding(.top, 10)
                            
                            Spacer()
                            Link(destination: URL(string: "https://github.com/Animatnetic")!, label: {
                                Rectangle()
                                    .frame(width: 300, height: 100)
                                    .mask(
                                        Image("gitgit")
                                            .resizable()
                                            .scaledToFit()
                                    )
                            })
                            
                            Spacer()
                            
                        }.foregroundColor(Color(red: 74/255, green: 85/255, blue: 162/255))
                        
                        Spacer()
                    }.padding(50)
                }
            }
        }.ignoresSafeArea()
    }
}

