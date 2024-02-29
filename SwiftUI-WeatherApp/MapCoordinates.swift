//
//  MapCoordinates.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 11/10/22.
//
import Foundation
import SwiftUI
import MapKit
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate{
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isloading = false
    override init() {
        super.init()
        manager.delegate = self
    }
    func requestLocation()  {
        isloading = true
        manager.requestLocation()
        
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isloading = false
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Eror Getting Location 1", error)
        isloading = false
    }
    }

