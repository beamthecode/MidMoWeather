//
//  HomeView.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/1/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showWeather: Bool = false
    
    var body: some View {
        ZStack {
            Color.theme.background.ignoresSafeArea()
            
            VStack {
                HStack {
                    ButtonView(iconName: showWeather ? "plus.viewfinder" : "info")
                        .background(
                            AnimatedButtonView(animate: $showWeather)
                        )
                        
                    Spacer()
                    Text(showWeather ? "Your Weather" : "Weather")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.theme.accent)
                    Spacer()
                    ButtonView(iconName: showWeather ? "sun.snow" : "sun.rain")
                        .onTapGesture {
                            withAnimation(.bouncy()) {
                                showWeather.toggle()
                            }
                        }
                }
                .padding(.horizontal, 40)
                
                Spacer(minLength: 0)
            }
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
            .navigationBarHidden(true)
    }
}
