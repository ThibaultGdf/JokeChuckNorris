//
//  ContentView.swift
//  LoadingSkeleton
//
//  Created by Thibault GODEFROY on 28/02/2024.
//

import SwiftUI

// MARK: - JokeView
struct JokeView: View {
	
	// MARK: Properties
	@StateObject var viewModel = JokeViewModel()
	
	// MARK: Body
	var body: some View {
		VStack(spacing: 100) {
			ImageView()
			if self.viewModel.isLoading {
				ProgressView()
			} else {
				JokeTextView(viewModel: viewModel)
			}
			Spacer()
			ButtonView(viewModel: viewModel)
		}.padding()
	}
}

// MARK: - Preview
#Preview {
	JokeView()
}




