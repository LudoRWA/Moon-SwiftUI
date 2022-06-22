//
//  CoinbaseServiceProtocol.swift
//  Moon
//
//  Created by Ludovic Roullier on 20/05/2022.
//
//	Docs:
//	getFiatPrice: https://docs.cloud.coinbase.com/sign-in-with-coinbase/docs/api-prices
//

import Foundation

protocol CoinbaseServiceProtocol {
    func getFiatPrice(_ currency: String, completion: @escaping (_ result: Result<CoinbaseData, CoinbaseError>) -> ())
}

class CoinbaseService: CoinbaseServiceProtocol {
    
	func getFiatPrice(_ currency: String, completion: @escaping (Result<CoinbaseData, CoinbaseError>) -> ()) {
		guard let url = URL(string: "https://api.coinbase.com/v2/prices/ETH-\(currency)/spot") else { return }
		
		var request = URLRequest(url: url)
		request.setValue("application/json", forHTTPHeaderField: "Accept")

		URLSession.shared.dataTask(with: request) { (data, response, error) in
			guard let data = data else { completion(.failure(.error)); return }
			
			do {
				let decoder = JSONDecoder()
				decoder.keyDecodingStrategy = .convertFromSnakeCase
				let result = try decoder.decode(CoinbaseData.self, from: data)

				completion(.success(result))
			} catch {
				
				completion(.failure(.error))
			}
		}.resume()
	}
}

