//
//  CurrentCity.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 09/10/22.
//

import SwiftUI


struct CurrentLocationView: View {
    var CurrentCity: String
    var CurrentTemp: Int
    var CurrentAtmos: String
    var CurrentweatherImage: String
    
    var body: some View {
        VStack(spacing: -25){
            Text(CurrentCity)
                .font(.system(size: 32, weight: .medium, design: .default))
                .padding(.bottom,25)
            
                .foregroundColor(.white)
            Text("\(CurrentTemp)°")
                .font(.system(size: 90, weight: .light, design: .serif))
                .foregroundColor(.white)
            
            HStack(spacing: 20) {
                Text(CurrentAtmos)
                    .foregroundColor(.white)
                    .padding(.top,8)
                    .padding(.leading,5)
                    .font(.system(size: 22, weight: .medium, design: .rounded))
                
                
                Image(systemName: CurrentweatherImage)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 40, height: 50)
                    .padding(.top,7)
                
            }
            
            
        }
    }
}



