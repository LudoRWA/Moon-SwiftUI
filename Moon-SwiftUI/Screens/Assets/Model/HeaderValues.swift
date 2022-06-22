//
//  HeaderValues.swift
//  Moon-SwiftUI
//
//  Created by Ludovic Roullier on 23/05/2022.
//

import Foundation

struct HeaderValues {
	
	var isFloorValues = UserDefaults.standard.bool(forKey: "isFloorValues") {
		didSet {
			UserDefaults.standard.set(isFloorValues, forKey: "isFloorValues")
		}
	}
	var floor = CurrenciesValuesModel()
	var average = CurrenciesValuesModel()
	var progress = 0.0
}

struct CurrenciesValuesModel: Equatable {
	var eth = "---"
	var fiat = "Loading..."
}
