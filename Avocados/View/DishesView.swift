//
//  DishesView.swift
//  Avocados
//
//  Created by Satya Prakash Sahu on 16/08/21.
//

import SwiftUI

struct DishesView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        
        HStack(alignment: .center, spacing: 4) {
            
            // MARK: - Leftside Stack
            VStack (alignment: .leading, spacing: 4){
                
                HStack()    {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                
                
                }   // End of HStack
                
                Divider()
                
                HStack()    {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                
                
                }   // End of HStack
                
                Divider()
                
                HStack()    {
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                
                
                }   // End of HStack
                
                Divider()
                
                HStack()    {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
       
                }   // End of HStack
            
            }   // End of VStack
            
            
            // MARK: - HeartIcon View
            VStack(alignment: .center, spacing: 16)
          {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }

            // MARK: - Rightside Stack
            VStack(alignment: .trailing, spacing: 4) {
                
                HStack()    {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .iconModifier()
                
                }   // End of HStack
                
                Divider()
            
                HStack()    {
                    Text("Sandwich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .iconModifier()
                
                }   // End of HStack
                
                Divider()
                
                HStack()    {
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .iconModifier()
                
                }   // End of HStack
                
                Divider()
                
                HStack()    {
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .iconModifier()
                
                }   // End of HStack
                
            }   // End of VStack
          
        }   // HStack Ends
        .font(.system(.callout,design:.serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight : 220)
    }
}
// MARK: - Preview
struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}

// MARK: - Custom View Modifiers


struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}


extension View {
  func iconModifier() -> some View {
    modifier(IconModifier())
  }
}
