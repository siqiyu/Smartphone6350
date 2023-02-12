//
//  ViewController.swift
//  NeuStockApp
//
//  Created by yusiqi on 2/11/23.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController {

    @IBOutlet weak var txtStocksy:UITextField!
    
    @IBOutlet weak var lblStockPrice:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func getStockPrice(_ sender: Any) {
        guard let symbol = txtStocksy.text else{return}
        let url = "\(baseURL)\(symbol)?apikey=\(apiKey)"
        SwiftSpinner.show("Getting stock price for \(symbol)")
        
        Alamofire.request(url).responseJSON { response in
            SwiftSpinner.hide()
            if response.error != nil {
                print("Error in response")
                return
            }
            guard let rawData = response.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            guard let stock = jsonArray.first else {return}
            print(stock)
            let symbol = stock["symbol"].stringValue
            let price = stock["price"].doubleValue
            let volume = stock["volume"].intvalue
            
            print("symbol = \(symbol)")
            print("price = \(price)")
            print("volume = \(volume)")
            self.lblStockPrice.text = "price = \(price) $"
        }
    }
}

