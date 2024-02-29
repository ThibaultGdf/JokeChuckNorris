//
//  Joke.swift
//  Joke
//
//  Created by Thibault GODEFROY on 28/02/2024.
//

import Foundation

// MARK: - JokeResponse
struct JokeResponse: Decodable {
	let categories: [String]
	let createdAt: String
	let iconURL: String
	let id: String
	let updatedAt: String
	let url: String
	let value: String
	
	// MARK: CodingKeys
	enum CodingKeys: String, CodingKey {
		case categories
		case createdAt = "created_at"
		case iconURL = "icon_url"
		case id
		case updatedAt = "updated_at"
		case url, value
	}
}
