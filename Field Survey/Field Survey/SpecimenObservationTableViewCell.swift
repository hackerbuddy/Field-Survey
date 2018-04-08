//
//  SpecimenObservationTableViewCell.swift
//  Field Survey
//
//  Created by boborama on 4/7/18.
//  Copyright © 2018 hackerbuddy. All rights reserved.
//

import UIKit

class SpecimenObservationTableViewCell: UITableViewCell {
    @IBOutlet weak var specimenIconImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
