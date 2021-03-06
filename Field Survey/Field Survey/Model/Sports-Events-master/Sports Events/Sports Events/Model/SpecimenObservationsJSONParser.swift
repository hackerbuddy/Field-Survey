//
//  SpecimenObservationsJSONParser.swift

import Foundation

class SpecimenObservationsJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [SpecimenObservation] {
        var specimenObservations = [SpecimenObservation]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
           let root = json as? [String: Any],
           let status = root["status"] as? String,
           status == "ok" {
            
            if let observations = root["observations"] as? [Any] {
                for observation in observations {
                    if let observation = observation as? [String: String] {
                        if let classification = obvervation["classification"],
                           let title = obvervation["title"],
                           let description = obvervation["description"]
                           let dateString = obvervation["date"],
                           let date = dateFormatter.date(from: dateString) {
                           
                            if let specimenObservation = SpecimenObservation(classification: classification, title: title, description: description, date: date) {
                                specimenObservations.append(specimenObservation)
                            }
                        }
                    }
                }
            }
            
        }
        
        return specimenObservations
    }
    
}
