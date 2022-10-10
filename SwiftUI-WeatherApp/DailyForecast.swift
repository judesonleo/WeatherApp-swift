//
//  DailyForecast.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 09/10/22.
//

import SwiftUI

struct WeatherDayView: View {
    var day: String
    var image: String
    var temp: Int
    var body: some View {
        VStack {
            
            Text(day)
                
                .foregroundColor(.white)
            
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 50, height: 40)
            Text("\(temp)°")
                .font(.system(size: 20, weight: .light, design: .serif))
                .foregroundColor(.white)
            
        }
    }
}
