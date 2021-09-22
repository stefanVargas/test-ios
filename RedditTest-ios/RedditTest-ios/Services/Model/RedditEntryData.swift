//
//  RedditEntryData.swift
//  RedditTest-ios
//
//  Created by Stefan V. de Moraes on 21/09/21.
//

import Foundation

struct RedditEntryData: Codable {
    
    var id: String?
    var title: String?
    var author: String?
    var thumbnail: String?
    var commentsNumber: Int?
    var created: Double?
    
    private enum CodingKeys: String, CodingKey {
        case commentsNumber = "num_comments"
    }
    
}
