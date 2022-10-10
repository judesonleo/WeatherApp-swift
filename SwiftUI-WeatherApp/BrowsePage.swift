//
//  BrowsePage.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 09/10/22.
//

import SwiftUI


struct BrowseView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue,.cyan , .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false){
                VStack{
                    ForEach(0..<3){ index in
                        ZStack{
                            LinearGradient(colors: [Color.pink,.purple,Color("greyyy")], startPoint: .topTrailing, endPoint: .bottomLeading)
                            VStack{
                                Text("Bengaluru")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 27))
                                    .padding(.top,15)
                                    .padding(.trailing,220)
                                Text("20°")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 40))
                                    .padding(.top,-47)
                                    .padding(.leading,250)
                                    
                                Spacer()
                                Text("Cloudy")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 27))
                                    .padding(.trailing,250)
                                    .padding(.bottom,10)
                                
                                Text("H:30°   L:26°")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 23))
                                    .padding(.top,-47)
                                    .padding(.leading,200)
                                    
                               
                            }
                        }
                            .frame(width: 360,height: 200)
                            .cornerRadius(20)
                    }
                }
            }
           
            
        }
            .tabItem{
                
                Image(systemName:"magnifyingglass.circle.fill")
                    .renderingMode(.original)
                    
                Text("Browse")
            }
    }
}
struct BrowserView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}

