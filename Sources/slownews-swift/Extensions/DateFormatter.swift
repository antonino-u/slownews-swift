//
//  DateFormatter.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-05.
//

import Foundation

extension DateFormatter {
    
    static let iso8601Full: DateFormatter = {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
        return formatter
    }()
    
    static let yyyyMMdd: DateFormatter = {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
}
