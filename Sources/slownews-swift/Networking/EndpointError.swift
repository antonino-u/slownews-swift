//
//  EndpointError.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-05.
//

import Foundation

enum EndpointError: Error {
    
    case noData
    case parsing(error: Error)
    case networking(error: Error)
}
