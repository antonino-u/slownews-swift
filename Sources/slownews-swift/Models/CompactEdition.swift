//
//  CompactEdition.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-04.
//

import Foundation

public struct CompactEdition: Model {
    
    let isWeekend: Bool
    let language: String
    let id: String
    @DateCodable<yyyyMMddDateCodableStrategy> var date: Date
    let isoDay: Int
    let image: String
    @DateCodable<iso8601FullDateCodableStrategy> var pipelineRunAt: Date

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
