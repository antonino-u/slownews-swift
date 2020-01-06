//
//  CompactEdition.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-04.
//

import Foundation

public struct CompactEdition: Model {
    
    public let isWeekend: Bool
    public let language: String
    public let id: String
    @DateCodable<yyyyMMddDateCodableStrategy> public var date: Date
    public let isoDay: Int
    public let image: String
    @DateCodable<iso8601FullDateCodableStrategy> public var pipelineRunAt: Date

    enum CodingKeys: String, CodingKey {
        
        case isWeekend
        case language
        case id = "_id"
        case date
        case isoDay = "isoday"
        case image
        case pipelineRunAt
    }
}
