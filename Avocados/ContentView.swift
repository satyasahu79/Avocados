//
//  ContentView.swift
//  Avocados
//
//  Created by Satya Prakash Sahu on 16/08/21.
//

import SwiftUI

struct ContentView: View {
// MARK: - Properties
   
    
    var body: some View {
    // MARK: - Body
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            RecepiesView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recepies")
                }
            RipeningStageView()
                .tabItem    {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
            
        }   //TabView Ends
        .accentColor(Color.primary)
        
    }
}



// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
