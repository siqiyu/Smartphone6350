//
//  ViewController.swift
//  CustomTableViewFood
//
//  Created by yusiqi on 2/17/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let FoodArray = ["pizza", "lobster", "roastChicken", "seafood", "HainanFood", "bbq", "dianxin", "hotpot"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FoodArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.ImageFood.image = UIImage(named: FoodArray[indexPath.row])
        cell.FoodName.text = FoodArray[indexPath.row]
        return cell
    }
}

