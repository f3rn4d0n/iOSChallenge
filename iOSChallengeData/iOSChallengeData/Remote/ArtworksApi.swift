//
//  ArtworksApi.swift
//  iOSChallenge
//
//  Created by Luis Fernando Bustos Ramírez on 12/02/24.
//

import Foundation
import iOSChallengeEntities

public struct ArtworksApi: ArtworkRemoteDataSourceType {
    
    let service: NetworkServiceType
    
    public init(service: NetworkServiceType = RequestNetworkProvider()) {
        self.service = service
    }
    
    public func getArtworks(page: Int, limit: Int) async throws -> ArtworksList {
        
        let requestModel = ArtworksRequestModel(page: page, limit: limit)
        let endpoint = ArtworksEndpoint.fetchArtworks(model: requestModel)
        
        let artworksResponse: ArtworksResponseModel = try await service.request(target: endpoint)
        
        return artworksResponse.mapToArtworks()
    }
    
    public func getArtist(id: Int) async throws -> Artist {
        
        let requestModel = ArtistRequestModel(artistId: id)
        let endpoint = ArtworksEndpoint.getArtist(model: requestModel)
        
        let artistResponse: ArtistResponseModel = try await service.request(target: endpoint)
        
        return artistResponse.mapToArtist()
    }
}
