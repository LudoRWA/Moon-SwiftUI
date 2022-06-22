//
//  AssetsList.swift
//  Moon-SwiftUI
//
//  Created by Ludovic Roullier on 18/05/2022.
//

import SwiftUI

struct AssetsList: View {
	@EnvironmentObject var viewModel: AssetsViewModel
	@State private var hasFetchedData = false
	
	var body: some View {
		ScrollView {
			LazyVStack(spacing: 16.0) {
				
				Button(action: {}) { AssetHeader() }
					.buttonStyle(ScaleListSelectionStyle())
				
				ForEach(viewModel.sortedAssets) { currentAsset in
					
					NavigationLink {
						
						DetailsView(asset: currentAsset)
					} label: {
						
						AssetRow(asset: currentAsset, isFloorValues: viewModel.headerValues.isFloorValues)
					}
					.buttonStyle(ScaleListSelectionStyle())
				}
			}
			.padding(EdgeInsets(top: 16, leading: 16, bottom: 50, trailing: 16))
			.onReceive(viewModel.$wallet) { _ in viewModel.startSync() }
		}
	}
}

struct AssetsList_Previews: PreviewProvider {
	
	static var previews: some View {

		AssetsList()
			.environmentObject({ () -> AssetsViewModel in
				let viewModel = AssetsViewModel()
				viewModel.assets = PreviewData().assets
				return viewModel
			}())
	}
}
