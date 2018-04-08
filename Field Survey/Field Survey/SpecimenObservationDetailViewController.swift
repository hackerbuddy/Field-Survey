//
//  SpecimenObservationDetailViewController.swift
//  Field Survey
//
//  Created by boborama on 4/6/18.
//  Copyright © 2018 hackerbuddy. All rights reserved.
//

import UIKit

class SpecimenObservationDetailViewController: UIViewController {
    
    var specimenObservation: SpecimenObservation?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var specimenObservationImageView: UIImageView!
    @IBOutlet weak var classificationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Observation"
        
        dateFormatter.dateStyle = .medium   //covers date portion
        dateFormatter.timeStyle = .medium   //covers time portion
        
        specimenObservationImageView.image = specimenObservation?.classification.image
        //grabs associated image related to struct
        classificationLabel.text = specimenObservation?.title
        descriptionLabel.text = specimenObservation?.description
        
        if let date = specimenObservation?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
