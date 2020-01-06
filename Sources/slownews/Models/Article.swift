//
//  Article.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-05.
//

import Foundation

public struct Article: Model {
    
    public let priority: Int
    public let readMins: Int
    public let id: String
    public let source: String
    public let title: String
    public let author: String?
    public let category: String
    public let description: String
    public let url: String
    public let image: String
    @DateCodable<iso8601FullDateCodableStrategy> public var written: Date
    @DateCodable<yyyyMMddDateCodableStrategy> public var firstEdition: Date
    
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
