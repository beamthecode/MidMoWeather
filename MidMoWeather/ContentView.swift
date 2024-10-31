//
//  ContentView.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 10/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background.ignoresSafeArea()
            
            VStack {
                Text("Accent Color")
                    .foregroundStyle(Color.theme.accent)
                Text("Accent Color")
                    .foregroundStyle(Color.theme.secondary)
                Text("Accent Color")
                    .foregroundStyle(Color.theme.moYellow)
                Text("Accent Color")
                    .foregroundStyle(Color.theme.moGray)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
