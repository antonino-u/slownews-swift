//
//  Endpoints.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-04.
//

import Foundation

public struct Endpoints {
        
    private struct Statics {
        
        static let base = "https://slowne.ws/api"
        static let editions = "editions"
        static let newsSources = "sources"
    }
    
    static func editionWithId(id: String) -> AnyEndpoint<FullEdition> {
        
        return AnyEndpoint<FullEdition>(urlString: "\(Statics.base)/\(Statics.editions)/\(id)")
    }
    
    static func editionWithDate(date: Date) -> AnyEndpoint<FullEdition> {
        
        let stringValue = "\(Statics.base)/\(Statics.editions)/\(DateFormatter.yyyyMMdd.string(from: date))"
        return AnyEndpoint<FullEdition>(urlString: stringValue)
    }
    
    static func compactEditions(page: Int = 1) -> AnyEndpoint<CompactEditionsPage> {
        
        return AnyEndpoint<CompactEditionsPage>(urlString: "\(Statics.base)/\(Statics.editions)?page=\(page)")
    }
    
    static func newsSources() -> AnyEndpoint<NewsSources> {
        
        return AnyEndpoint<NewsSources>(urlString: "\(Statics.base)/\(Statics.newsSources)")
    }
}
