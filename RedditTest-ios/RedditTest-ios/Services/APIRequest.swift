//
//  APIRequest.swift
//  RedditTest-ios
//
//  Created by Stefan V. de Moraes on 21/09/21.
//

import Foundation


import UIKit

class APIRequest: NSMutableURLRequest {
    
    enum Method: String {
        case GET
        case POST
        case PUT
        case PATCH
    }
    
    convenience init?(requestMethod: Method, urlString: String, bodyParams: [String: Any]? = nil) {
        
        guard let url =  URL.init(string: urlString) else { return nil }
        let path = NetworkConstants.path
        self.init(url: url.appendingPathComponent(path))
        self.httpMethod = requestMethod.rawValue
        self.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        if let bodyParams = bodyParams {
            let body = try? JSONSerialization.data(withJSONObject: bodyParams, options: .prettyPrinted)
            self.httpBody = body
        }
    }
}
