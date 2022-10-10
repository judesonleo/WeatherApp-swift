//
//  HomePage.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 09/10/22.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue,.cyan , .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            VStack{
                TabView{
                    DifferentCityView(City: "Bengaluru", Temp: 25, Atmos: "Mostly Cloudy",AtomsImage: "cloud.sun.fill")
                    
                    DifferentCityView(City: "Delhi", Temp: 33, Atmos: "Sunny",AtomsImage: "sun.max.fill")
                    DifferentCityView(City: "Mumbai", Temp: 22, Atmos: "Rainy",AtomsImage: "cloud.heavyrain.fill")
                    
                }.tabViewStyle(.page(indexDisplayMode: .always))
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
            }
            
            
            
            
        }.tabItem{
            
            Image(systemName:"house.fill")
            Text("Home")
        }
    }
}
