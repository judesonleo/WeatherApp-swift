//
//  Weather-1.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 09/10/22.
//

import SwiftUI

struct DifferentCityView: View {
    
    var City: String
    var Temp:Int
    var Atmos: String
    var AtomsImage: String
    

    var body: some View {
        VStack{
            ScrollView(showsIndicators: false   ){
                CurrentLocationView(CurrentCity: City, CurrentTemp: Temp, CurrentAtmos: Atmos, CurrentweatherImage: AtomsImage)
                
                
                Spacer()
                VStack{
                    
                    VStack {
                        Text("Cloudy conditions will continue for the rest of the day. Wind gusts are up to 10 kph.")
                            .foregroundColor(.white)
                        
                            .padding(.bottom,10)
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack(spacing: 21){
                                
                                
                                WeatherDayView(day: "Now", image: "cloud.fog.fill", temp: 22 )
                                    .padding(.leading,10)
                                WeatherDayView(day: "8PM", image: "cloud.fog.fill", temp: 21 )
                                WeatherDayView(day: "9PM", image: "cloud.sun.rain.fill", temp: 21 )
                                WeatherDayView(day: "10PM", image: "cloud.sun.rain.fill", temp: 20 )
                                WeatherDayView(day: "11PM", image: "cloud.sun.fill", temp: 20 )
                                WeatherDayView(day: "12AM", image: "sun.max.fill", temp: 20 )
                                WeatherDayView(day: "1AM", image: "sun.max.fill", temp: 20 )
                                WeatherDayView(day: "2AM", image: "sun.max.fill", temp: 20 )
                                WeatherDayView(day: "3AM", image: "sun.max.fill", temp: 20 )
                                
                            }
                        }
                        
                    }.frame(width: 370, height: 213)
                        .background(Color(hue: 0.607, saturation: 5.11, brightness: 0.202, opacity: 0.227))
                        .cornerRadius(32)
                    
                    
                        .cornerRadius(32)
                        .padding()
                    
                    
                    
                    VStack{
                        Text("10-DAY FORECAST" )
                            .foregroundColor(.white)
                            .padding(.top,10)
                        
                        
                            VStack{
                                WeatherTenDayView(day: "Sun", image: "wind", temp: 25)
                                WeatherTenDayView(day: "Mon", image: "sun.and.horizon.fill", temp: 20 )
                                WeatherTenDayView(day: "Tue", image: "sun.and.horizon.fill", temp: 20 )
                                WeatherTenDayView(day: "Wed", image: "cloud.snow.fill", temp: 25 )
                                WeatherTenDayView(day: "Thur", image: "sun.min.fill", temp: 25 )
                                WeatherTenDayView(day: "Fri", image: "cloud.hail.fill", temp: 25 )
                                WeatherTenDayView(day: "Sat", image: "sun.max.fill", temp: 25 )
                            }
                        
                        
                        
                    }.frame(width: 370, height: 500)
                        .background(Color(hue: 0.607, saturation: 5.11, brightness: 0.222, opacity: 0.227))
                        .cornerRadius(32)
                    
                    
              
                    
                }
            }
            
            
            
            
            
        }
    }
}
