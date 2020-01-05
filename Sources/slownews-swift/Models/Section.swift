//
//  Section.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-05.
//

import Foundation

public struct Section: Model {
    
    let displayTitle: Bool
    let template: String
    let articles: [Article]
    let position: Int
    let articleLimit: Int
    let filterPosition: Int
    let isCurated: Bool
    let showCuratorInfo: Bool
    let slug: String
    let title: String
    let subtitle: String
    let classes: String
    let variant: String?
    let emoji: String?
    
    enum CodingKeys: String, CodingKey {
        
        case displayTitle
        case template
        case articles
        case position
        case articleLimit
        case filterPosition
        case isCurated
        case showCuratorInfo
        case slug
        case title
        case subtitle
        case classes
        case variant
        case emoji
    }
}
