//
//  ViewController.swift
//  RestaurantAndFood
//
//  Created by yusiqi on 2/17/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    let resturants = ["Hotpot", "Thai Restaurant", "Dessert"]
    let foods = [["Spam", "Meat", "Vegetable", "Potato"], ["Tom Yum Soup", "Curry Yellow Chicken", "Frozen Marinated Raw Shrimp", "Coconut"], ["Bubble Tea", "Tiramisu", "Cheese Cake", "Bread"]]
    var selectedFood: [String] = []

    
    @IBOutlet weak var restaurantTable: UITableView!
    
    @IBOutlet weak var foodTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == restaurantTable{
            return resturants.count
        }else{
            return selectedFood.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == restaurantTable{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = resturants[indexPath.row]
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = selectedFood[indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == restaurantTable{
            selectedFood = foods[indexPath.row]
            foodTable.reloadData()
        }
    }
}

