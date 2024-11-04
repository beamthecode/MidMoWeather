//
//  WeatherRowView.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/4/24.
//

import SwiftUI

struct WeatherRowView: View {
    var body: some View {
        HStack(spacing: 0) {
            Text("Weather Row")
                .font(.caption)
                .foregroundStyle(Color.theme.secondary)
                .frame(minWidth: 30)
        }
    }
}

#Preview {
    WeatherRowView()
}


