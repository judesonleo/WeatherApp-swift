//
//  WelcomView.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 12/10/22.
//

import SwiftUI
import CoreLocationUI
struct WelcomView: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack{
            VStack (spacing: 20) {
                Text ("Welcome to the Weather App")
                    .bold().font (.title)
                Text ("Please share your current location to get the weather in your area")
                    .padding ()
            }.multilineTextAlignment(.center)
                .padding()
            LocationButton(.sendCurrentLocation){
                locationManager.requestLocation()
            }.cornerRadius(20)
                .symbolVariant(.fill)
                .foregroundColor(.white)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
struct WelcomView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomView()
    }
}
