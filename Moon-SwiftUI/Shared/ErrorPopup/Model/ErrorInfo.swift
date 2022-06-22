//
//  ErrorInfo.swift
//  Moon-SwiftUI
//
//  Created by Ludovic Roullier on 23/05/2022.
//

import Foundation

struct ErrorInfo: Identifiable {
	
	let id = UUID()
	var message = "" {
		didSet {
			isPresented = true
		}
	}
	var isPresented = false
}
