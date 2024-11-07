//
//  HomeViewModel.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/7/24.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCurrent: [Current] = []
    
    private let dataService = WeatherDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        
        dataService.$allCurrent
            .sink { [weak self] (returnedCurrent) in
                self?.allCurrent = returnedCurrent
            }
            .store(in: &cancellables)
    }
}
