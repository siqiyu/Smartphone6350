//
//  ViewController.swift
//  classicalTableViewController
//
//  Created by yusiqi on 2/12/23.
//

import UIKit
/*
 1.add table view on the view controllor, streach it across the entire screen(0,0,0,0)
 2.add a table view cell to the table view above put name of "cell" in reusableIdentifier section
 3.conform to protocols UItableviewdelegate, uitableviewdatasource
 4.add stub functions numberofrowsindection and cellforrowat
 5.add tableview.delegate and tableview.datasource = self in viewdidload
 6.add an array which will contain values to be displayed
 7.in the numberofrowsinsection return the array count
 8.in the cellforrowat function add dequeuereusablecell function and populate the cell
 */




class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let friends = ["Ashish", "Tom", "Bill", "Peter", "Sara", "Mark", "Ashish", "Tom", "Bill", "Peter", "Sara", "Mark", "Ashish", "Tom", "Bill", "Peter", "Sara", "Mark"]
    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = friends[indexPath.row]
        
        return cell
    }
    
}

