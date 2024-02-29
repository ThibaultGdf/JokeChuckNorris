//
//  JokeViewModel.swift
//  LoadingSkeleton
//
//  Created by Thibault GODEFROY on 28/02/2024.
//

import Foundation

// MARK: - JokeViewModel
class JokeViewModel: ObservableObject {
	
	// MARK: Properties
	private let apiManager = APIManager()
	
	@Published var joke: JokeResponse?
	@Published var isLoading: Bool = false

	// MARK: Functions
	@MainActor
	func getData() {
		self.isLoading = true
		Task {
			do {
				self.joke = try await self.apiManager.fetchData(model: JokeResponse.self)
			} catch {
				self.joke = nil
				print(error.localizedDescription)
			}
			self.isLoading = false
		}
	}
}
