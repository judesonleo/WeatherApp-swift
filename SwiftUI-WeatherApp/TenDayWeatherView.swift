//
//  TenDayWeatherView.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 09/10/22.
//

import SwiftUI

struct WeatherTenDayView: View {
    var day: String
    var image: String
    var temp: Int
    var body: some View {
        HStack(spacing: 90) {
            
            Text(day)
                
                .foregroundColor(.white)
                

            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 50, height: 50,alignment: .centerLastTextBaseline)
            Text("\(temp)°")
                .font(.system(size: 20, weight: .light, design: .serif))
                .foregroundColor(.white)
            
        }
    }
}

