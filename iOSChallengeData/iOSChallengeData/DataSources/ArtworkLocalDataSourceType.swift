//
//  ArtworkLocalDataSourceType.swift
//  iOSChallenge
//
//  Created by Luis Fernando Bustos Ramírez on 13/02/24.
//

import Foundation
import iOSChallengeEntities

public protocol ArtworkLocalDataSourceType {
    
    func getArtworks() async throws -> ArtworksList
    func saveArtworks(_ artworks: [Artwork], currentPage: Int, totalPages: Int) async throws -> Void
    func clear() async throws -> Void
}
