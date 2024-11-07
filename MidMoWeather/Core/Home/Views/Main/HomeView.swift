//
//  HomeView.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/1/24.
//

import SwiftUI
import SwiftfulUI

struct HomeView: View {
    
    @EnvironmentObject var viewModel:  HomeViewModel
    
    @State private var showWeather: Bool = false
    @State private var showHeader: Bool = true
    @State private var offset: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color.theme.background.ignoresSafeArea()
            
            ScrollView(.vertical) {
                LazyVStack(spacing: 0) {
                    
                    HeaderCell(height: 300, title: "Columbia", subtitle: "Home", tempTitle: "65", weatherTitle: "Cloudy", highTitle: "72", lowTitle: "61", imageName: URL(string: "https://fastly.picsum.photos/id/38/1280/960.jpg?hmac=HBrgyJHQOGVicaWoXgvdSfTakkAyv4BxAt4rF0DhWkU"), shadowColor: Color.theme.accent.opacity(0.6))
                
                
                HStack(spacing: 0) {
                    
                 
                    InfoCell(iconName: "sunrise.fill", title: "SUNRISE", detail: "Sunset: 5:03 PM", data: "06:41AM", width: 170, height: 170)
                        .offset(x: 10)
                    
                    
                    InfoCell(iconName: "thermometer.variable", title: "FEELS LIKE", detail: "Wind is making it feel cooler.", data: "59°", width: 170, height: 170)
                        .offset(x: -10)
                    
                    }
                
                    
                    VStack {
                        InfoCell(iconName: "wind", title: "WIND", detail: "Wind is out of the northwest. Expect gusts of 8mph.", data: "4mph NNW", width: 360, height: 170)
                            
                    }
                }
            }
            
          header
                .frame(maxHeight: .infinity, alignment: .top)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HomeView()
                .navigationBarHidden(true)
        }
        .environmentObject(dev.homeVM)
    }
}


private extension HomeView {
    var header: some View {
        VStack {
            HStack {
                ButtonView(iconName: showWeather ? "plus.viewfinder" : "info")
                   
                    
                Spacer()
                
                Spacer()
                ButtonView(iconName: showWeather ? "sun.snow" : "sun.rain")
                    .background(
                        AnimatedButtonView(animate: $showWeather)
                    )
                    .onTapGesture {
                        withAnimation(.spring()) {
                            showWeather.toggle()
                        }
                    }
                    
            }
            .padding(.horizontal, 40)
            
            Spacer(minLength: 0)
        }
    }
}

