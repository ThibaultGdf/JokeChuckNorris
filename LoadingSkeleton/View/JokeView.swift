//
//  ContentView.swift
//  LoadingSkeleton
//
//  Created by Thibault GODEFROY on 28/02/2024.
//

import SwiftUI

enum ResultState {
	case loading
	case failed(error: Error)
	case success(content: [JokeResponse])
}

struct JokeView: View {
	@ObservedObject var viewModel = JokeViewModel()
		@State private var isLoading: Bool = false
	var body: some View {
		VStack(spacing: 100) {
			AsyncImage(url: URL(string: "https://api.chucknorris.io/img/chucknorris_logo_coloured_small@2x.png"), scale: 3)
			if isLoading {
				Text("LOADING")
			} else {
				if let joke = self.viewModel.joke {
					Text(joke.value)
						.multilineTextAlignment(.center)
				} else {
					Text("Cliquez sur le bouton pour obtenir une blague !")
				}
			}
				
			Button {
				self.viewModel.getData()
			} label: {
				Text("Actualiser")
			}.buttonStyle(.borderedProminent)
		}.padding()
	}
}

#Preview {
	JokeView()
}
