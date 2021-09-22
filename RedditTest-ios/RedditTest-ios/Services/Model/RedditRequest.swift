//
//  RedditRequest.swift
//  RedditTest-ios
//
//  Created by Stefan V. de Moraes on 21/09/21.
//

import Foundation

struct RedditRequest: Codable {
    var after: String?
    var before: String?
    var count: Int?
    var limit: Int?
    
    func getPath() -> String {
        
        let path = "\(after)"
    }
}
