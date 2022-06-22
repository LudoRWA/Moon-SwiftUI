//
//  Asset.swift
//  Moon-SwiftUI
//
//  Created by Ludovic Roullier on 20/05/2022.
//

struct Asset: Hashable, Codable, Identifiable {
	
	var id: String { collectionSlug }
	let collectionSlug: String
	let collectionName: String
	let collectionImageUrl: String
	let collectionDescription: String
	var floorPrice: Double
	var averagePrice: Double
	
	var nfts: [NFT]
	
	struct NFT: Hashable, Codable, Identifiable {
		
		let id: Int32
		let nftImageUrl: String
		let nftName: String
		let nftPermalink: String
	}
}
