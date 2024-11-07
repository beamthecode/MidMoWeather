//
//  WeatherDataService.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/7/24.
//

import Foundation
import Combine

class WeatherDataService {
    
    @Published var allCurrent: [Current] = []
    
    var currentWeatherSubscription: AnyCancellable?
    
    init() {
        getCurrentWeather()
    }
    
    private func getCurrentWeather() {
        
        guard let url = URL(string: "https://api.weather.gov/gridpoints/LSX/38,92") else { return }
        
        currentWeatherSubscription = URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap { (output) -> Data in
                
                guard let response = output.response as? HTTPURLResponse,
                      response.statusCode >= 200 && response.statusCode < 300 else {
                    throw URLError(.badServerResponse)
                }
                return output.data
            }
            .receive(on: DispatchQueue.main)
            .decode(type: [Current].self, decoder: JSONDecoder())
            .sink { (completion) in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print(error.localizedDescription)
                }
            } receiveValue: { [weak self] (returnedCurrent) in
                self?.allCurrent = returnedCurrent
                self?.currentWeatherSubscription?.cancel()
            }

    }
}
