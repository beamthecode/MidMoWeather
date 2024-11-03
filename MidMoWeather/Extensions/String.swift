//
//  String.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/3/24.
//

import Foundation


extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
