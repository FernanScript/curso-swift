//
//  ApiNetwork.swift
//  app1
//
//  Created by Fernando Trejos on 02/23/25.
//

import Foundation

class ApiNetwork {

    struct Wrapper: Codable {
        let response: String
        let results: [SuperHero]
    }
    
    struct SuperHero: Codable {
        let id: String
        let name: String
    }
    
    func getHerosByQuery(query: String) async throws -> Wrapper {
        let url = URL(string: "https://superheroapi.com/api/ed5bc77099bcd2b911d21d2dba692d92/search/\(query)")!
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let wrapper = try JSONDecoder().decode(Wrapper.self, from: data)
        
        return wrapper
    }
}
