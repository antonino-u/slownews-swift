//
//  NewsSource.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-04.
//

import Foundation

public struct NewsSource: Model {
  
    public let isActive: Bool
    public let isFavored: Bool
    public let id: String
    public let slug: String
    public let name: String
    public let url: String
    public let logo: String?
    public let category: String
    public let language: String
    public let country: String
    
    enum CodingKeys: String, CodingKey {
        case isActive
        case isFavored
        case id = "_id"
        case slug
        case name
        case url
        case logo
        case category
        case language
        case country
    }
}
