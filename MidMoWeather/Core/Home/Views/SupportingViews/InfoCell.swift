//
//  InfoCell.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/5/24.
//

import SwiftUI

struct InfoCell: View {
    
    let iconName: String
    let title: String
    let detail: String
    let data: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 2) {
                Image(systemName: iconName)
                Text(title)
            }
            .font(.system(size: 12))
            .foregroundStyle(Color.theme.secondary)
            .padding(.vertical)
            
            Text(data)
                .font(.title)
                .foregroundStyle(Color.white)
            
            Spacer()
            
            Text(detail)
                .font(.system(size: 14))
                .foregroundStyle(Color.white)
                .padding(.vertical)
            
            
        }
        .frame(width: 170, height: 170)
        .background(
            Rectangle()
                .foregroundStyle(Color.theme.accent.opacity(0.8))
                .cornerRadius(20)
                .shadow(color: Color.theme.accent.opacity((0.80)),
                        radius: 5, x: 0, y: 0)
        )
        .padding()
    }
}

#Preview {
    HStack(spacing: 0) {
        InfoCell(iconName: "sunrise.fill", title: "SUNRISE", detail: "Sunset: 5:03PM", data: "06:41AM")
        InfoCell(iconName: "sunrise.fill", title: "SUNRISE", detail: "Sunset: 5:03PM", data: "06:41AM")
            
    }
    
}
