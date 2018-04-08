// SpecimenObservation.swift

import Foundation

struct SpecimenObservation {
    let classification: Specimen
    let title: String
    let description: String
    let date: Date
    
    init(classification: Specimen, title: String, description: String, date: Date) {
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(classification: String, title: String, description: String, date: Date) {
        if let classification = Specimen(rawValue: classification) {
            self.init(classification: classification, title: title, description: description, date: date)
        } else {
            return nil
        }
    }
}
