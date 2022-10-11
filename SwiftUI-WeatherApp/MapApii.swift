//
//  WeatherApii.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 11/10/22.
//

import SwiftUI
import WeatherKit
import MapKit
import CoreLocation


struct MapApi: View {
    var lat = [12.9793957,]
    var log = [77.5741100]
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 12.9793957, longitude:  77.5741100),
        span: MKCoordinateSpan(latitudeDelta: 0.025, longitudeDelta: 0.025))
    
    var body: some View {
      
            Map(coordinateRegion: $region)
                .frame(width:370,height: 200)
                .cornerRadius(40)
                .offset(y:-300)
        
        Spacer()
       
    }
}




