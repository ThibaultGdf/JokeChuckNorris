//
//  APIError.swift
//  LoadingSkeleton
//
//  Created by Thibault GODEFROY on 28/02/2024.
//

import Foundation

enum APIError: Error {
	case invalidPath
	case decoding
	case encoding
	case invalidResponse(statusCode: Int)
}
