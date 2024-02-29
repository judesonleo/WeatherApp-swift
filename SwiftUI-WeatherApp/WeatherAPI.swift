//
//  WeatherAPI.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 13/10/22.
//

import Foundation
import SwiftUI
import CoreLocation

class WeatherManager{
    func getCurrentweather(latitude: CLLocationDegrees, longitude: CLLocation)async throws-> ResponseBody{
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=67b0882b042b7fb96669fa1a487a9788&units=metric") else{fatalError("Missing URL")}
        let urlRequest = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        print(data)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {fatalError("Error while fetching the data ")}
        let decodeData = try JSONDecoder().decode(ResponseBody.self, from: data)
            

        return decodeData
    }
}




//
//   let responseBody = try? newJSONDecoder().decode(ResponseBody.self, from: jsonData)


// MARK: - ResponseBody
struct ResponseBody: Decodable {
    var coord: Coord
    var weather: [Weather]
    var base: String
    var main: Main
    var visibility: Int
    var wind: Wind
    var clouds: Clouds
    var dt: Int
    var sys: Sys
    var timezone, id: Int
    var name: String
    var cod: Int
}

// MARK: - Clouds
struct Clouds: Decodable {
    var all: Int
}

// MARK: - Coord
struct Coord: Decodable {
    var lon, lat: Double
}

// MARK: - Main
struct Main: Decodable {
    var temp, feelsLike, tempMin, tempMax: Double
    var pressure, humidity: Int

    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike
        case tempMin
        case tempMax
        case pressure, humidity
    }
}

// MARK: - Sys
struct Sys: Decodable {
    var type, id: Int
    var country: String
    var sunrise, sunset: Int
}

// MARK: - Weather
struct Weather: Decodable {
    var id: Int
    var main, weatherDescription, icon: String

    enum CodingKeys: String, CodingKey {
        case id, main
        case weatherDescription
        case icon
    }
}

// MARK: - Wind
struct Wind: Decodable {
    var speed: Double
    var deg: Int
}
