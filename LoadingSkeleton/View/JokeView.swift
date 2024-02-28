//
//  ContentView.swift
//  LoadingSkeleton
//
//  Created by Thibault GODEFROY on 28/02/2024.
//

import SwiftUI

struct JokeView: View {
	@StateObject var viewModel = JokeViewModel()
	@State private var isLoading: Bool = false
	var body: some View {
		VStack(spacing: 100) {
			ImageView()
			if isLoading {
				Text("LOADING")
			} else {
				JokeTextView(viewModel: viewModel)
			}
			ButtonView(viewModel: viewModel)
		}.padding()
	}
}

#Preview {
	JokeView()
}




