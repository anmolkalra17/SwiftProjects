//
//  WeatherManager.swift
//  Clima
//
//  Created by Anmol Kalra on 12/12/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=f93f3b985ef7a622593bc40daed7b9b5&units=metric"
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    self.parseJSON(data: safeData)
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(data: Data) {
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(WeatherData.self, from: data)
            print(decodedData.weather[0].description)
        } catch {
            print(error.localizedDescription)
        }
    }
}
