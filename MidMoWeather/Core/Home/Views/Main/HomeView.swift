//
//  HomeView.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/1/24.
//

import SwiftUI
import SwiftfulUI

struct HomeView: View {
    
    @State private var showWeather: Bool = false
    @State private var showHeader: Bool = true
    @State private var offset: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color.theme.background.ignoresSafeArea()
            
            ScrollView(.vertical) {
                LazyVStack(spacing: 12) {
                    
                    HeaderCell(height: 300, title: "Columbia", subtitle: "Home", tempTitle: "65", weatherTitle: "Cloudy", highTitle: "72", lowTitle: "61", imageName: URL(string: "https://fastly.picsum.photos/id/38/1280/960.jpg?hmac=HBrgyJHQOGVicaWoXgvdSfTakkAyv4BxAt4rF0DhWkU"), shadowColor: Color.black.opacity(0.6))
                }
            }
            
          header
                .frame(maxHeight: .infinity, alignment: .top)
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
            .navigationBarHidden(true)
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

