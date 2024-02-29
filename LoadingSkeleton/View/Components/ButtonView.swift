//
//  ButtonView.swift
//  LoadingSkeleton
//
//  Created by Thibault GODEFROY on 28/02/2024.
//

import Foundation
import SwiftUI

// MARK: - ButtonView
struct ButtonView: View {
	
	// MARK: Properties
	@ObservedObject var viewModel: JokeViewModel
	
	// MARK: Body
	var body: some View {
		Button {
			self.viewModel.getData()
		} label: {
			Text("Actualiser")
		}
		.buttonStyle(.borderedProminent)
		.disabled(self.viewModel.isLoading)
	}
}
