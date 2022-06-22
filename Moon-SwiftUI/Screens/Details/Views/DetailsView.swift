//
//  DetailsView.swift
//  Moon-SwiftUI
//
//  Created by Ludovic Roullier on 18/05/2022.
//

import SwiftUI

struct DetailsView: View {
	@State private var currentIndex = 0
	var asset: Asset
	
	var body: some View {
		VStack(spacing: 0.0) {
			
			DetailsNavigationView(nft: asset.nfts[currentIndex])
			
			ZStack(alignment: .bottom) {
				
				DetailsList(currentIndex: $currentIndex, asset: asset)
				DetailsOpenButton(permalink: asset.nfts[currentIndex].nftPermalink)
			}
		}
		.navigationBarHidden(true)
	}
}

struct DetailsView_Previews: PreviewProvider {
	static var previews: some View {
		DetailsView(asset: PreviewData().assets[0])
	}
}
