//
//  SportsEventsViewController.swift
//  Sports Events
//
//  Created by Tech Innovator on 7/15/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class SportsEventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var sportsEventsTableView: UITableView!
    
    let sportsEvents = SportsEventsJSONLoader.load(fileName: "sports_events")
    
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        self.title = "Sports Events"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sportsEvents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sportsEventCell", for: indexPath)
        
        if let cell = cell as? SportsEventTableViewCell {
            let sportsEvent = sportsEvents[indexPath.row]
            cell.sportIconImageView.image = sportsEvent.sport.image
            cell.matchupLabel.text = sportsEvent.matchup
            cell.dateLabel.text = dateFormatter.string(from: sportsEvent.date)
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SportsEventDetailViewController,
           let row = sportsEventsTableView.indexPathForSelectedRow?.row {
            destination.sportsEvent = sportsEvents[row]
        }
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
