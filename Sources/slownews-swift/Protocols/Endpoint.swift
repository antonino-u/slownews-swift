//
//  Endpoint.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-04.
//

import Foundation

public protocol Endpoint {
    
    associatedtype `Model`: slownews_swift.Model
    var url: URL { get set }
}

extension Endpoint {
    
    func get(completion: @escaping ((_ result: Result<Self.Model, EndpointError>) -> Void)) {
        Networking.get(endpoint: self, completion: completion)
    }
}

public struct AnyEndpoint<Model: slownews_swift.Model>: Endpoint {

    public var url: URL
    
    init(urlString: String) {
        
        let url = URL(string: urlString)
        self.url = url!
    }
}

