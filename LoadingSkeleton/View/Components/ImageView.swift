//
//  ImageView.swift
//  LoadingSkeleton
//
//  Created by Thibault GODEFROY on 28/02/2024.
//

import Foundation
import SwiftUI

// MARK: - ImageView
struct ImageView: View {
	var body: some View {
		AsyncImage(url: URL(string: "https://api.chucknorris.io/img/chucknorris_logo_coloured_small@2x.png"), scale: 3)
	}
}
