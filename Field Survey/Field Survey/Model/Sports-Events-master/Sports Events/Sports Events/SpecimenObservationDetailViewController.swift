//
//  SpecimenObservationDetailViewController.swift


import UIKit

class SpecimenObservationDetailViewController: UIViewController {
    
    var specimenObservation: SpecimenObservation?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var specimenIconImageView: UIImageView!
    @IBOutlet weak var matchupLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Event"
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        sportIconImageView.image = sportsEvent?.sport.image
        matchupLabel.text = sportsEvent?.matchup
        
        if let date = sportsEvent?.date {
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
    

}
