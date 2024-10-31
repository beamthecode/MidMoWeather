//
//  Color.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 10/31/24.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    
    let background = Color("BackgroundColor")
    let accent = Color("AccentColor")
    let secondary = Color("SecondaryTextColor")
    let moYellow = Color("MoYellow")
    let moGray = Color("MoGray")
}
