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
        //print(Realm.Configuration.defaultConfiguration.fileURL!)
        //testFunction()
        getValues()
    }
    
    func getValues(){
        do{
            let stocks = realm.objects(StockPrice.self)
            print(stocks)
        }
    }
    
    func testFunction(){
        let tsla: StockPrice = StockPrice()
        tsla.symbol = "TSLA"
        tsla.price = 147.17
        tsla.volume = 13435315
        
        let msft: StockPrice = StockPrice()
        msft.symbol = "MSFT"
        msft.price = 209.02
        msft.volume = 26790637
        
        //Add to the Realm
        do {
            try realm.write {
            realm.add(tsla, update: .modified)
            realm.add(msft, update: .modified)
            
            }
        } catch let error as NSError {
            print("Unable to add values to the DB")
        }
    }
}

