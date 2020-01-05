//
//  NewsSource.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-04.
//

import Foundation

public struct NewsSource: Model {
  
    let isActive: Bool
    let isFavored: Bool
    let id: String
    let slug: String
    let name: String
    let url: String
    let logo: String?
    let category: String
    let language: String
    let country: String
    
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
