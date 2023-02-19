//
//  ViewController.swift
//  LocalDBUsingRealm
//
//  Created by yusiqi on 2/18/23.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func testfunction(){
        let tsla: StockPrice = StockPrice()
        
    }

}

