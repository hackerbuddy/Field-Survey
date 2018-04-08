//
//  Specimen.swift
//  Specimen Events
//
//  Created by hackerbuddy

import UIKit

enum Specimen: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
