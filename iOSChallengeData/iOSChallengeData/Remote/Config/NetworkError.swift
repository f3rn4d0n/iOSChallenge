//
//  NetworkError.swift
//  iOSChallenge
//
//  Created by Luis Fernando Bustos Ramírez on 08/02/24.
//

import Foundation

public enum NetworkError: Error {
    case invalidURL
    case invalidStatus(code: Int)
    case invalidResponse
    case dataConversionFailure(error: String)
    case missingMockData
}
