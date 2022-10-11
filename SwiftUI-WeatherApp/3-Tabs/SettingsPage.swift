//
//  SettingsPage.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 09/10/22.
//
import AVKit
import AVFoundation
import SwiftUI



struct SettingsView: View {

    
    @State private var player = AVPlayer()
    
    var playeritem = AVPlayer(url: Bundle.main.url(forResource: "Rickroll", withExtension: "mp4")!)
    var body: some View {
        ZStack(){
            NavigationView{
                VideoPlayer(player: playeritem)
                    .edgesIgnoringSafeArea(.all)
                    .onAppear(
                        perform: playeritem.play)
         
                    
            }
            
                
            
            
            
        }
            .tabItem{
                
                Image(systemName:"gearshape")
                Text("Settings")
            }
    }
}


