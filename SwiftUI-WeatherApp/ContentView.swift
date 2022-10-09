//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 14/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
// MARK: - Section-1
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue,.cyan , .white]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                        .edgesIgnoringSafeArea(.all)
            VStack(spacing: -25) {
                Text("Bengaluru")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .padding(.top,50)
                    .padding(.bottom,20)
                    .foregroundColor(.white)
                Text("25°")
                    .font(.system(size: 90, weight: .light, design: .serif))
                    
                    .padding(.bottom,0)
                    .padding(.leading,20)
                    .foregroundColor(.white)
                
                    HStack(spacing:30) {
                        Text("Mostly Cloudy")
                            .foregroundColor(.white)
                            .padding(.leading,35)
                            .font(.system(size: 22, weight: .medium, design: .rounded))
                        
                        
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio( contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .padding(.bottom,10)
                        
                    }.padding(20)
 
              
                VStack {
                    Text("Cloudy conditions will continue for the rest of the day. Wind gusts are up to 10 kph.")
                        .foregroundColor(.white)
                        .padding(.bottom,20)
                   
                    HStack(spacing: 11){
                        

                        WeatherView(day: "Now", image: "cloud.fog.fill", temp: 22 )
                        WeatherView(day: "8PM", image: "cloud.fog", temp: 21 )
                        WeatherView(day: "9PM", image: "cloud.sun.rain.fill", temp: 21 )
                        WeatherView(day: "10PM", image: "cloud.sun.rain.fill", temp: 20 )
                        WeatherView(day: "11PM", image: "cloud.sun.fill", temp: 20 )
                        WeatherView(day: "12AM", image: "sun.max.fill", temp: 20 )
                       
                           
                    }
                }.frame(width: 370, height: 213)
                    .background(Color(hue: 0.607, saturation: 5.11, brightness: 0.202, opacity: 0.227))
                    .cornerRadius(32)
                Spacer()

                    .cornerRadius(32)
                    .padding()
              
                Spacer(minLength: 50)
                
                VStack{
                    Text("10-DAY FORECAST" )
                        .foregroundColor(.white)
                    WeatherWeekView(day: "Sun", image: "wind", temp: 25)
                    WeatherWeekView(day: "Mon", image: "sun.and.horizon.fill", temp: 20 )
                    WeatherWeekView(day: "Tue", image: "sun.and.horizon.fill", temp: 20 )
                   WeatherWeekView(day: "Wed", image: "cloud.snow.fill", temp: 25 )
              //     WeatherWeekView(day: "Tue", image: "cloud.snow.fill", temp: 25 )
                }.frame(width: 370, height: 300)
                    .background(Color(hue: 0.607, saturation: 5.11, brightness: 0.222, opacity: 0.227))
                    .cornerRadius(32)
                 
                   
                
            }
            
        }
        
       
        
        
        
    }
        

}

// MARK: - Section-3
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherView: View {
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
struct WeatherWeekView: View {
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
                .frame(width: 50, height: 50)
            Text("\(temp)°")
                .font(.system(size: 20, weight: .light, design: .serif))
                .foregroundColor(.white)
            
        }
    }
}
//    .frame(width: 370, height: 170)
//        .background(Color(hue: 0.951, saturation: 0.221, brightness: 0.232, opacity: 0.507))
//        .cornerRadius(32)
