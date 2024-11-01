//
//  ButtonView.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/1/24.
//

import SwiftUI

struct ButtonView: View {
    
    let iconName: String
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundStyle(Color.theme.accent)
            .frame(width: 65, height: 40)
            .background(
                Capsule()
                    .foregroundStyle(Color.theme.background)
            )
            .shadow(color: Color.theme.accent.opacity((0.80)),
                    radius: 15, x: 0, y: 0)
    }
}

#Preview {
    ButtonView(iconName: "sun.min")
        
}
