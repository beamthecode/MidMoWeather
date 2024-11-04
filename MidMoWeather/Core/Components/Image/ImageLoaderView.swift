//
//  ImageLoaderView.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/4/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    
    var url: URL? = URL(string: "https://picsum.photos/id/237/200/300") ?? nil
    var resizingMode: ContentMode = .fill
    
    var body: some View {
        Rectangle()
            .opacity(0.001)
            .overlay(
                WebImage(url: url)
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: resizingMode)
                    .allowsHitTesting(false)
            )
            .clipped()
    }
}

#Preview {
    ImageLoaderView()
        .cornerRadius(30)
        .padding(40)
        .padding(.vertical, 60)
}
