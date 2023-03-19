//
//  ViewController.swift
//  sevenWonders
//
//  Created by yusiqi on 3/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let wonders = ["Pyramid of Khufu", "Olympia", "Temple of Artemis", "Mausoleum at Halicarnassus", "Lighthouse of Alexandria", "Hanging Garden of Babylon", "The Colossus of Rhodes"]

    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wonders.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("wondersTableViewCell", owner: self)?.first as! wondersTableViewCell
                
        cell.imgContainer.image = UIImage(named: "\(wonders[indexPath.row])")
        cell.lblImg.text = "\(wonders[indexPath.row])"
                
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        performSegue(withIdentifier: "segueDetails", sender:self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetails"{
            let secondVC = segue.destination as! wondersViewController
            secondVC.segueIndex = index
        }
    }
}

