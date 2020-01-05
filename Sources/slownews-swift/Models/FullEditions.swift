//
//  FullEditions.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-05.
//

import Foundation

@dynamicMemberLookup public struct FullEdition: Model {
    
    private let edition: FullEditionFlat
    
    subscript<T>(dynamicMember keyPath: KeyPath<FullEditionFlat, T>) -> T {
        
        return edition[keyPath: keyPath]
    }
}

public struct FullEditionFlat: Model {
    
    let isWeekend: Bool
    let language: String
    let id: String
    @DateCodable<yyyyMMddDateCodableStrategy> var date: Date
    let sections: [Section]
    let isoDay: Int
    let image: String

    enum CodingKeys: String, CodingKey {
        
        case isWeekend
        case language
        case id = "_id"
        case date
        case sections
        case isoDay = "isoday"
        case image
    }
}
