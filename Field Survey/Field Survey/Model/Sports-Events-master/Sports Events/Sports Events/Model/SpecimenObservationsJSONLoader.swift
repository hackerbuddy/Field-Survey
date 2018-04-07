//  SpecimenObservationsJSONLoader.swift


import Foundation

class SpecimenObservationsJSONLoader {
    
    class func load(fileName: String) -> [SpecimenObservation] {
        var observations = [SpecimenObservation]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            observations = SpecimenObservationJSONParser.parse(data)
        }
        
        return observations
    }
    
}
