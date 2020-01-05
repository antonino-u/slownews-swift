//
//  CodableDate.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-05.
//

import Foundation

protocol DateCodableStrategy {

    static var dateFormatter: DateFormatter { get }
}

struct iso8601FullDateCodableStrategy: DateCodableStrategy {

    static var dateFormatter: DateFormatter {
        DateFormatter.iso8601Full
    }
}

struct yyyyMMddDateCodableStrategy: DateCodableStrategy {

    static var dateFormatter: DateFormatter {
        DateFormatter.yyyyMMdd
    }
}

struct CodableDateError: Error {
    
    var message: String
}

@propertyWrapper struct DateCodable<Formatter: DateCodableStrategy>: Codable {
    
    var wrappedValue: Date
    
    private var dateFormatter: DateFormatter {

        return Formatter.dateFormatter
    }
        
    init(from decoder: Decoder) throws {
        
        self.wrappedValue = Date()
        let container = try decoder.singleValueContainer()
        let stringValue = try container.decode(String.self)
        guard let date = self.dateFormatter.date(from: stringValue) else {
            throw CodableDateError(message: "Couldn't turn \(stringValue) into a date using \(self.dateFormatter))")
        }
        self.wrappedValue = date
    }
    
    func encode(to encoder: Encoder) throws {
        
        var container = encoder.singleValueContainer()
        let stringValue = self.dateFormatter.string(from: self.wrappedValue)
        try container.encode(stringValue)
    }
}
