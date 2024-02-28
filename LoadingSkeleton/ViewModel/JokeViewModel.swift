//
//  JokeViewModel.swift
//  LoadingSkeleton
//
//  Created by Thibault GODEFROY on 28/02/2024.
//

import Foundation

class JokeViewModel: ObservableObject {
	
	private let apiManager = APIManager()
	
	@Published var joke: JokeResponse?
	
	func getData() {
		Task { @MainActor in
			do {
				self.joke = try await self.apiManager.fetchData(model: JokeResponse.self)
			} catch {
				self.joke = nil
				print(error.localizedDescription)
			}
		}
	}
}
