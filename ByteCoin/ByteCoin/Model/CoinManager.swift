//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Anmol Kalra on 23/12/2020.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didUpdateUI(price: String, currency: String)
    func didFailWithError(error: Error)
}

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "928CF010-8D66-4231-8C54-AD10D336AB8A"
    
    var delegate: CoinManagerDelegate?
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice(for currency: String) {
        let stringURL = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        
        if let stringURL = URL(string: stringURL) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: stringURL) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    if let rate = parseJSON(safeData) {
                        let priceString = String(format: "%.2f", rate)
                        self.delegate?.didUpdateUI(price: priceString, currency: currency)
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_ data: Data) -> Double? {
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(CoinData.self, from: data)
            let rate = decodedData.rate
            
            return rate
            
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
