//
//  FullEdition.swift
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
    
    public let isWeekend: Bool
    public let language: String
    public let id: String
    @DateCodable<yyyyMMddDateCodableStrategy> public var date: Date
    public let sections: [Section]
    public let isoDay: Int
    public let image: String

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
