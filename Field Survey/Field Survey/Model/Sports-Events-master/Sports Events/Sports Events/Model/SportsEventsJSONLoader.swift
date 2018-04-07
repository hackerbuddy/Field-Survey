//
//  SportsEventsJSONLoader.swift
//  Sports Events
//
//  Created by Tech Innovator on 7/15/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation

class SportsEventsJSONLoader {
    
    class func load(fileName: String) -> [SportsEvent] {
        var events = [SportsEvent]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            events = SportsEventsJSONParser.parse(data)
        }
        
        return events
    }
    
}
