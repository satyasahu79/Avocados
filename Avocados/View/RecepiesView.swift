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
                
        // MARK: - Footer
                VStack(alignment: .center, spacing: 20)
                {
                    Text("All about Avocados")
                        .font(.system(.title,design : .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
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
