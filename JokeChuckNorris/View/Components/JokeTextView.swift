//
//  JokeTextView.swift
//  Joke
//
//  Created by Thibault GODEFROY on 28/02/2024.
//

import Foundation
import SwiftUI

// MARK: - JokeTextView
struct JokeTextView: View {
	
	// MARK: Properties
	@ObservedObject var viewModel: JokeViewModel
	
	// MARK: Body
	var body: some View {
		if let joke = self.viewModel.joke {
			Text(joke.value)
				.multilineTextAlignment(.center)
		} else {
			Text("Cliquez sur le bouton \"Actualiser\" pour obtenir une blague !")
				.multilineTextAlignment(.center)
		}
	}
}
