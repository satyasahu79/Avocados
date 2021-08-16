//
//  RecepiesView.swift
//  Avocados
//
//  Created by Satya Prakash Sahu on 16/08/21.
//

import SwiftUI

struct RecepiesView: View {
    // MARK: - Properties
    
    var headers : [Header] = headersData
    
    
    // MARK: - Body
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            VStack(alignment: .center, spacing: 20)
            {
        
        // MARK: - Header
                
                
                ScrollView(.horizontal, showsIndicators: false)
                {
                    HStack(alignment: .top, spacing: 0)
                    {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                
                
        // MARK: - Dishes
                
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .titleModifier()
                
                DishesView()
                    .frame(maxWidth:640)
                
        // MARK: - Footer
                VStack(alignment: .center, spacing: 20)
                {
                    Text("All about Avocados")
                        .fontWeight(.bold)
                        .titleModifier()
                    
                        
                    
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .lineLimit(nil)
                        .multilineTextAlignment(.center)
                        .font(.system(.body,design : .serif))
                        .foregroundColor(.gray)
                    
                }   // End of VStack
                
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom,85)
                
        
            }   // End of VStack
            
           
        })  // End of Scroll View
        .edgesIgnoringSafeArea(.all)
        .padding(0)
        
    }
}

// MARK: - Previews
struct RecepiesView_Previews: PreviewProvider {
    static var previews: some View {
        RecepiesView(headers: headersData)
            .preferredColorScheme(.dark)
    }
}


// MARK: - Custom View Modifiers

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title,design : .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

extension View {
    func titleModifier() -> some View {
        self.modifier(Title())
    }
}
