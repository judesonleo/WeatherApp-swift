//
//  HomePage.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 09/10/22.
//

import SwiftUI

struct HomePageView: View {
    
    var Cityname = ["Bengaluru","Delhi","Mumbai"]
    var Temperature = [25,33,22]
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue,.cyan , .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            VStack{
                TabView{
                    DifferentCityView(City: Cityname[0], Temp: 25, Atmos: "Mostly Cloudy",AtomsImage: "cloud.sun.fill")
                    
                    DifferentCityView(City: Cityname[1], Temp: 33, Atmos: "Sunny",AtomsImage: "sun.max.fill")
                    DifferentCityView(City: Cityname[2], Temp: 22, Atmos: "Rainy",AtomsImage: "cloud.heavyrain.fill")
                    
                }.tabViewStyle(.page(indexDisplayMode: .always))
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
            }
            
            
            
            
        }.tabItem{
            
            Image(systemName:"house.fill")
            Text("Home")
        }
    }
}
