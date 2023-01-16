//
//  ViewController.swift
//  Hello World
//
//  Created by yusiqi on 1/14/23.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var IbExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func pressMeAction(_ sender: UIButton) {
        IbExample.text = "Hello World"
    }
}

