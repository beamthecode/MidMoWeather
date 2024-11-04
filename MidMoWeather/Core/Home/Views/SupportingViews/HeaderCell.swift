//
//  HeaderCell.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/4/24.
//

import SwiftUI
import SwiftfulUI

struct HeaderCell: View {
    
    var height: CGFloat = 400
    var title: String = "Columbia"
    var subtitle: String = " Home"
    var tempTitle: String = "72"
    var weatherTitle: String = "Cloudy"
    var highTitle: String = "72"
    var lowTitle: String = "61"
    var imageName: URL? = URL(string: "https://picsum.photos/id/237/200/300") ?? nil
    var shadowColor: Color = Color.theme.accent.opacity(0.8)
    
    
    var body: some View {
        Rectangle()
            .opacity(0)
            .overlay(
                ImageLoaderView(url: imageName)
            )
            .overlay(
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 0) {
                        Image(systemName: "location.fill")
                        Text(subtitle)
                            .font(.headline)
                            
                    }
                    .offset(x: 24)
                    Text(title)
                        .font(.system(size: 30))
                        .fontWeight(.semibold)
                    Text(tempTitle + "°")
                        .font(.system(size: 72))
                        .fontWeight(.semibold)
                        .offset(x: 18)
                    Text(weatherTitle)
                        .font(.title3)
                        .offset(x: 36)
                    HStack(spacing: 8) {
                        Text("H: \(highTitle + "°")")
                        Text("L: \(lowTitle + "°")")
                            
                    }
                    .fontWeight(.semibold)
                    .offset(x: 20)
                }
                .foregroundStyle(Color.white)
                .padding(16)
                .frame(maxWidth: .infinity)
                .background(
                    .linearGradient(colors: [shadowColor.opacity(0), shadowColor], startPoint: .top, endPoint: .bottom)
                )
                , alignment: .bottomLeading
            )
            .asStretchyHeader(startingHeight: height)
    }
}

#Preview {
    ZStack {
        Color.theme.background.ignoresSafeArea()
        ScrollView {
            HeaderCell()
        }
        .ignoresSafeArea()
    }
}
