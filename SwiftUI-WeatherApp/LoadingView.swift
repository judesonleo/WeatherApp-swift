//
//  LoadingView.swift
//  SwiftUI-WeatherApp
//
//  Created by Judeson Leo J S on 13/10/22.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {

        LoadingView()
    }
}
