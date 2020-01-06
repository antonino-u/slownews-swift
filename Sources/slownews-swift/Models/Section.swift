//
//  Section.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-05.
//

import Foundation

public struct Section: Model {
    
    public let displayTitle: Bool
    public let template: String
    public let articles: [Article]
    public let position: Int
    public let articleLimit: Int
    public let filterPosition: Int
    public let isCurated: Bool
    public let showCuratorInfo: Bool
    public let slug: String
    public let title: String
    public let subtitle: String
    public let classes: String
    public let variant: String?
    public let emoji: String?
    
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
