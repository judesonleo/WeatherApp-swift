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
            SettingsView()
            
            
            
        }
    }
        

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




