//
//  SecondViewController.swift
//  SegueExample
//
//  Created by yusiqi on 2/23/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblwelcome: UILabel!
    
    var welcomeName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lblwelcome.text = "Welcome \(welcomeName)"
        // Do any additional setup after loading the view.
    }
    
}
