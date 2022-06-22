//
//  CoinbaseServiceModel.swift
//  Moon-SwiftUI
//
//  Created by Ludovic Roullier on 20/05/2022.
//

struct CoinbaseData: Decodable {
    let data: CoinbaseDataAmount
}

struct CoinbaseDataAmount: Decodable {
    let amount : String?
}
