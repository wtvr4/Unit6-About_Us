import SwiftUI

struct MohamedView: View {
    var body: some View {
        ZStack {
            Color("m2")
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Hello, I'm\nMohamed Badir")
                    .multilineTextAlignment(.center)
                    .bold()
                    .font(.title)
                    .foregroundColor(Color("m4"))
                    .padding(.top)
                
                Image("cookie")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120)
                
                ZStack {
                    Rectangle()
                        .frame(width: 350, height: 350)
                        .cornerRadius(20)
                        .foregroundColor(Color("m3"))
                        .offset(y : -50)
                    
                    HStack {
                        VStack (alignment: .leading, spacing: 0) {
                            Text("About me :")
                                .font(
                                    .system(.title)
                                    .weight(.bold)
                                )
                                .foregroundColor(Color("m4"))
                                .padding(.leading)
                                .padding(.bottom)
                            
                            Text("  -I enjoy coding and exploring new \n    things related to it.")
                                .font(.title2)
                                .padding(.vertical, 10)
                                .foregroundColor(Color("m2"))
                                .bold()
                            
                            Text("  -Anything tech related has been\n    in my interest since a young age.")
                                .font(.title2)
                                .padding(.vertical, 10)
                                .foregroundColor(Color("m2"))
                                .bold()
                            
                            Text("  -I enjoy most sports but mostly \n    football and volleyball.")
                                .font(.title2)
                                .padding(.vertical, 10)
                                .foregroundColor(Color("m2"))
                                .bold()
                            
                            Text("  - I like reading")
                                .font(.title2)
                                .padding(.vertical, 10)
                                .foregroundColor(Color("m2"))
                                .bold()
                            
                            Spacer()
                            Link(destination: URL(string: "https://github.com/wtvr4")!, label: {
                                Rectangle()
                                    .foregroundColor(Color("m4"))
                                    .frame(width: 300, height: 100)
                                    .mask(
                                        Image("gitgit")
                                            .resizable()
                                            .scaledToFit()
                                    )
                            })
                        }}
                    
                    Spacer()
                    

                    
                }
                .padding()
            }
        }
    }
    
    struct MohamedView_Previews: PreviewProvider {
        static var previews: some View {
            MohamedView()
        }
    }
}
