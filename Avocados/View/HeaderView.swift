//
//  HeaderView.swift
//  Avocados
//
//  Created by Satya Prakash Sahu on 16/08/21.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - Properties
    @State private var isAnimating : Bool = false
    var header : Header
    
    var slideInAnimation : Animation    {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    // MARK: - Body
    var body: some View {
        
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            
            HStack(alignment: .center, spacing: 0) {
                
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width : 4)
                
                
                VStack(alignment: .leading, spacing: 6.0)  {
                    Text(header.headline)
                        .font(.system(.title,design:.serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(color: Color("ColorBlackTransparentDark"), radius: 3, x: 0 , y: 4)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .shadow(radius: 3 )
                        .foregroundColor(.white)
                    
                }   // VStack Ends
                .padding(.vertical,0)
                .padding(.horizontal,20)
            
            }   // HStack Ends
            .frame(width: 281.0, height: 105.0)
            .background(
                Color("ColorBlackTransparentLight"))
            .offset(x: -66, y: isAnimating ? 75 : 220)
            .animation(slideInAnimation)
            .onAppear(perform: {
                self.isAnimating.toggle()
            })
            
        }   // ZStack Ends

        .frame(width: 480.0, height: 320.0,alignment: .center)
    
    }
}


// MARK: - Preview
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData[2])
            .previewLayout(.sizeThatFits)
    }
}
