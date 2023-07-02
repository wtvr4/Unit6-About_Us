import SwiftUI

struct OmarView: View {
    var body: some View {
        ZStack {
            Color(.brown)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Hello, I'm\nOmar")
                    .multilineTextAlignment(.center)
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.top)
                
                Image("cookie")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120)
                    .padding(.top, 40)
                
                HStack{
                    Text("About me : \n- I enjoy coding \n- I read \n- A lot of free time \n   but always busy")
                        .multilineTextAlignment(.leading)
                        .bold()
                        .font(.system(size: 27))
                        .foregroundColor(.white)
                        .padding([.top, .leading], 29)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    if let url = URL(string: "https://github.com/laser-wound") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Image("gitgit")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 70)
                        .padding(.horizontal)
                        .offset(x: -5)
                }
                
            }
            .padding()
        }
    }
}
struct OmarView_Previews: PreviewProvider {
    static var previews: some View {
        OmarView()
    }
}
