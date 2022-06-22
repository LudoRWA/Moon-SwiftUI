//
//  AssetsView.swift
//  Moon-SwiftUI
//
//  Created by Ludovic Roullier on 18/05/2022.
//

import SwiftUI

struct AssetsView: View {
	@StateObject var viewModel = AssetsViewModel()
	
	var body: some View {
		NavigationView {
			VStack(spacing: 0.0) {
				
				AssetsNavigationView()
				AssetsList()
			}
			.navigationBarHidden(true)
			.popup(isPresented: $viewModel.error.isPresented, type: .floater(verticalPadding: 0, useSafeAreaInset: true), position: .top, autohideIn: 3) {
				
				ErrorView(error: viewModel.error)
			}
		}
		.environmentObject(viewModel)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		AssetsView()
	}
}
