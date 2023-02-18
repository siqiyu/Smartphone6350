//
//  TableViewController.swift
//  TableViewControllerExample
//
//  Created by yusiqi on 2/12/23.
//

import UIKit

/*
 1.remove view controller from storyboard and remove the code
 2.add a tableviewcontroller to the storyboard and add cell as reusable indentifier
 3.make the tableview as initial VC
 4.add tableviewcontroller code file and map UI and code file
 5.remove boiler plate code and have 2 functions numberofrowsinsection and cellforrowat
 6.add array and return arr.count in numberofrowsinsection
 7.return the cell(configure cell to use the array)
 */


class TableViewController: UITableViewController {
    
    let friends = ["Ashish", "Tom", "Bill", "Peter", "Mark"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = friends[indexPath.row]
        
        return cell
    }
    
}
