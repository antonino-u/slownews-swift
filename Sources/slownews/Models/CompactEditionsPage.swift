//
//  CompactEditionsPage.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-04.
//

import Foundation

public struct CompactEditionsPage: Model {
    
    public let page: Int
    public let compactEditions: [CompactEdition]
    
    enum CodingKeys: String, CodingKey {
        
        case page
        case compactEditions = "editions"
    }

}
