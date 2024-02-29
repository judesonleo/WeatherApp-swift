//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 14/09/22.
//

import SwiftUI


struct ContentView: View {
    
    
   @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    
    var body: some View {
            
        VStack
        {
            if let _ = locationManager.location{
                
                TabView{


                    HomePageView()
                    BrowseView()
                        .tabItem{

                            Image(systemName:"magnifyingglass.circle.fill")
                                .renderingMode(.original)

                            Text("Browse")
                        }
                    SettingsView()



                }

                
               
            }
            else{
                if locationManager.isloading{
                   LoadingView()
                }else{
                    WelcomView()
                        .environmentObject(locationManager)
                }
            }
            
            
        }.background(Color(hue: 0.58, saturation: 0.85, brightness: 0.75, opacity: 0.709))
            .preferredColorScheme(.dark)
        
    }
        

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




