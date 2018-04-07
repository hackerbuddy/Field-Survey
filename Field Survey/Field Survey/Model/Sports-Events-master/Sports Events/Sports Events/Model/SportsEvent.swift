//
//  SportsEvent.swift
//  Sports Events
//
//  Created by Tech Innovator on 7/15/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation

struct SportsEvent {
    let sport: Sport
    let matchup: String
    let date: Date
    
    init(sport: Sport, matchup: String, date: Date) {
        self.sport = sport
        self.matchup = matchup
        self.date = date
    }
    
    init?(sportName: String, matchup: String, date: Date) {
        if let sport = Sport(rawValue: sportName) {
            self.init(sport: sport, matchup: matchup, date: date)
        } else {
            return nil
        }
    }
}
