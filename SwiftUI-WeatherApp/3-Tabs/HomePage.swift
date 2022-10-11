//
//  HomePage.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 09/10/22.
//

import SwiftUI

struct HomePageView: View {
    
    var Cityname = ["Bengaluru","Delhi","Mumbai"]
    var Atmossss = ["Mostly Cloudy","Sunny","Rainy"]
    var WeatherImage = ["cloud.sun.fill", "sun.max.fill","cloud.heavyrain.fill"]
    var Temperature = [25,33,22]
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue,.cyan , .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            VStack{
                TabView{
                    ForEach(0..<3){ i in
                    DifferentCityView(City: Cityname[i], Temp: Temperature[i], Atmos: Atmossss[i],AtomsImage: WeatherImage[i])
                        
                }
                }.tabViewStyle(.page(indexDisplayMode: .always))
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
            }
            
            
            
            
        }.tabItem{
            
            Image(systemName:"house.fill")
            Text("Home")
        }
    }
}
