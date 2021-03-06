//
//  ErrorView.swift
//  Moon-SwiftUI
//
//  Created by Ludovic Roullier on 24/05/2022.
//

import SwiftUI

struct ErrorView: View {
	var error: ErrorInfo
	
	var body: some View {
		HStack {
			Image("AlertIcon")
				.resizable()
				.scaledToFit()
				.frame(width: 40.0, height: 40.0)
			
			Text(error.message)
				.font(.callout)
				.fontWeight(.regular)
				.foregroundColor(.white)
				.multilineTextAlignment(.leading)
			
			Spacer()
		}
		.padding()
		.background(Color("AlertColor"))
		.cornerRadius(26)
		.padding(8)
	}
}

struct ErrorView_Previews: PreviewProvider {
	static var previews: some View {
		ErrorView(error: ErrorInfo(message: "OpenSea is not accessible at the moment. Please try again later or check @apiopensea on Twitter."))
	}
}
