//
//  CodableDate.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-05.
//

import Foundation

public protocol DateCodableStrategy {

    static var dateFormatter: DateFormatter { get }
}

public struct iso8601FullDateCodableStrategy: DateCodableStrategy {

    public static var dateFormatter: DateFormatter {
        DateFormatter.iso8601Full
    }
}

public struct yyyyMMddDateCodableStrategy: DateCodableStrategy {

    public static var dateFormatter: DateFormatter {
        DateFormatter.yyyyMMdd
    }
}

struct CodableDateError: Error {
    
    var message: String
}

@propertyWrapper public struct DateCodable<Formatter: DateCodableStrategy>: Codable {
    
    public var wrappedValue: Date
    
    private var dateFormatter: DateFormatter {

        return Formatter.dateFormatter
    }
        
    public init(from decoder: Decoder) throws {
        
        self.wrappedValue = Date()
        let container = try decoder.singleValueContainer()
        let stringValue = try container.decode(String.self)
        guard let date = self.dateFormatter.date(from: stringValue) else {
            throw CodableDateError(message: "Couldn't turn \(stringValue) into a date using \(self.dateFormatter))")
        }
        self.wrappedValue = date
    }
    
    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.singleValueContainer()
        let stringValue = self.dateFormatter.string(from: self.wrappedValue)
        try container.encode(stringValue)
    }
}
