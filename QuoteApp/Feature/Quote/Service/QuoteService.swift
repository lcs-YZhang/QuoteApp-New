//
//  QuoteService.swift
//  QuoteApp
//
//  Created by Steven Zhang on 2021-10-07.
//

import Foundation
import SwiftUI

protocol QuoteService {
    func fetch() async throws -> [Quote]
}

final class QuoteServiceImpl: QuoteService {
    
    func fetch() async throws -> [Quote] {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("/api/quotes"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode([Quote].self, from: data)
    }
}
