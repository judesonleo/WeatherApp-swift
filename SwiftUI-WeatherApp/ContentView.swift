//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 14/09/22.
//

import SwiftUI


struct ContentView: View {
    
    
   
    
    var body: some View {
            
        TabView{
            
           
            HomePageView()
            BrowseView()
                .tabItem{
                    
                    Image(systemName:"magnifyingglass.circle.fill")
                        .renderingMode(.original)
                        
                    Text("Browse")
                }
            SettingsView()
            
            
            
        }
    }
        

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




