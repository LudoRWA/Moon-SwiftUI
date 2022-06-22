//
//  MoonApp.swift
//  Moon-SwiftUI
//
//  Created by Ludovic Roullier on 18/05/2022.
//

import SwiftUI

@main
struct MoonApp: App {
    var body: some Scene {
        WindowGroup {
			ZStack {
				AssetsView()
			}
        }
    }
}
