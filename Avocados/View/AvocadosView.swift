//
//  AvocadosView.swift
//  Avocados
//
//  Created by Satya Prakash Sahu on 16/08/21.
//

import SwiftUI

struct AvocadosView: View {
    // MARK: - Properties
    @State private var isAnimating : Bool = false
    
    
    // MARK: - Body
    var body: some View {
        VStack {
            
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240.0, height: 240.0,alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(self.isAnimating ? 1 : 0.95)
                .opacity(self.isAnimating ? 1 : 0.95)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                
        
             VStack {
                
                Text("Avocados")
                    .font(.system(.largeTitle,design:.serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0 , y: 4)
                
                    
                
                Text("Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
                    .foregroundColor(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                    .font(.system(.headline,design:.serif))
                    .lineLimit(nil)
                    .padding(.horizontal)
                    .lineSpacing(8.0)
                       
            }
                
            Spacer()
            
        }
           // End of Vstack
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear(
            perform: {
                self.isAnimating.toggle()
            })
    }
}



// MARK: - Preview
struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            .preferredColorScheme(.light)
    }
}
