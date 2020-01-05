//
//  Networking.swift
//  slownews-swift
//
//  Created by Antonino Urbano on 2020-01-04.
//

import Foundation

struct Networking {
    
    static func get<T: Endpoint>(endpoint: T, completion: @escaping ((_ result: Result<T.Model, EndpointError>) -> Void)) {
        
        let task = URLSession.shared.dataTask(with: endpoint.url) { (data, _, error) in
            
            guard let data = data else {
                return completion(Result.failure(.noData))
            }
            if let error = error {
                return completion(Result.failure(.networking(error: error)))
            }
            do {
                let value = try JSONDecoder().decode(T.Model.self, from: data)
                return completion(Result.success(value))
            } catch let error {
                print("Parsing error: \(error)")
                return completion(Result.failure(.parsing(error: error)))
            }
        }
        
        task.resume()
    }
}
