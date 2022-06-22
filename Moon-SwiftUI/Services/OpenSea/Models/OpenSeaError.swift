//
//  OpenSeaError.swift
//  Moon-SwiftUI
//
//  Created by Ludovic Roullier on 20/05/2022.
//

enum OpenSeaError: String, Error {
	case error = "OpenSea is not accessible at the moment. Please try again later or check @apiopensea on Twitter."
	case unknown = "OpenSea doesn't know this wallet. Please verify your wallet address and try again."
}
