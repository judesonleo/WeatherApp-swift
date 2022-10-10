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
    var body: some View {
        ZStack(){
            
            VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "Rickroll", withExtension: "mp4")!))
                .edgesIgnoringSafeArea(.all)
                
                .onAppear{
                    player.play()
                }
            
            
            
        }
            .tabItem{
                
                Image(systemName:"gearshape")
                Text("Settings")
            }
    }
}
