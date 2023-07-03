import SwiftUI

struct OmarView: View {
    var body: some View {
        ZStack {
            Color(red: 30/45, green: 2/49, blue: 7/200)
                .ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                Text("Hello, I'm\nOmar")
                    .multilineTextAlignment(.center)
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.top)
                
                Image("cat3")
                    .resizable()
                                       .scaledToFit()
                                       .frame(width:200)
                                       .mask(Circle())
                HStack{
                    Text("Likes : \n- I love strength training.\n- I enjoy watching movies. \n- love playing simulation games \n and RGP games. \n- love animal keeping. ")
                        .multilineTextAlignment(.leading)
                        .bold()
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .padding([.top, .leading], 29)
                    Spacer()
                }
                Text("Fav Funny Video")
                    .bold()
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                
                
                Button(action: {
                    if let url = URL(string: "https://youtu.be/L5IMqAaBeB0") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Image("you")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 70)
                        .padding(.horizontal)
                        .offset(x: -5)
                }
                
            }
            .padding()
            .shadow(color: .white.opacity(0.5), radius: 10, x: 0.0, y: 0.0)        .padding()
            
        }
    }
    
    
    struct OmarView_Previews: PreviewProvider {
        static var previews: some View {
            OmarView()
        }
    }
}
