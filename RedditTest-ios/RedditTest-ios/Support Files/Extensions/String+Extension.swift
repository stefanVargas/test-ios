//
//  String+Extension.swift
//  RedditTest-ios
//
//  Created by Stefan V. de Moraes on 22/09/21.
//

import Foundation


extension String {
    
    static func secondsToLocal(value: Int) -> String {
        
        let epochTime = TimeInterval(value) / 1000
        let date = Date(timeIntervalSinceNow: epochTime)
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")

        dateFormatter.dateFormat = "dd/mmm/yyyy H:mm:ss"
        
        return dateFormatter.string(from: date)
    }
    
}
