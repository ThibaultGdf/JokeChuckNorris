//
//  ButtonView.swift
//  LoadingSkeleton
//
//  Created by Thibault GODEFROY on 28/02/2024.
//

import Foundation
import SwiftUI

struct ButtonView: View {
	@ObservedObject var viewModel: JokeViewModel
	
	var body: some View {
		Button {
			self.viewModel.getData()
		} label: {
			Text("Actualiser")
		}.buttonStyle(.borderedProminent)
	}
}
