//
//  MidMoWeatherApp.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 10/30/24.
//

import SwiftUI

@main
struct MidMoWeatherApp: App {
    
    @StateObject private var viewModel = HomeViewModel()
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UITableView.appearance().backgroundColor = UIColor.clear
    }
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(viewModel)
        }
    }
}
