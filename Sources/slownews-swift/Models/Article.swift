//
//  Article.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-05.
//

import Foundation

public struct Article: Model {
    
    let priority: Int
    let readMins: Int
    let id: String
    let source: String
    let title: String
    let author: String?
    let category: String
    let description: String
    let url: String
    let image: String
    @DateCodable<iso8601FullDateCodableStrategy> var written: Date
    @DateCodable<yyyyMMddDateCodableStrategy> var firstEdition: Date
    
    enum CodingKeys: String, CodingKey {
        
        case priority
        case readMins
        case id = "_id"
        case source
        case title
        case author
        case category
        case description
        case url
        case image
        case written
        case firstEdition
    }
}
