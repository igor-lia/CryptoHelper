//
//  APICaller.swift
//  CryptoHelper
//
//  Created by Ігор Ляхович on 25.09.2022.
//

import Foundation

class CoinAPICaller {
    static let shared = CoinAPICaller()
    
    private struct Constants {
        static let apiKey = "795B24CB-26F2-4A74-B57F-BE4928F60892"
        static let assetsEndpoint = "https://rest.coinapi.io/v1/assets"
        static let URL = "https://rest.coinapi.io/v1/assets/BTC?apikey=795B24CB-26F2-4A74-B57F-BE4928F60892"
    }
    
    private init() {
        
    }
    
    public func getAllCryptoData(completion: @escaping (Result<[String], Error>) -> Void) {
        guard let url = URL(string: Constants.assetsEndpoint + "BTC?apikey=" + Constants.apiKey) else { return }
        let task = URLSession.shared.dataTask(with: url) {data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                
            }
            catch {
                completion(.failure(error))
            }
        }
    }
}
