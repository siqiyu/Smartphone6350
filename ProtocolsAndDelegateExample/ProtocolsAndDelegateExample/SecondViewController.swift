//
//  SecondViewController.swift
//  ProtocolsAndDelegateExample
//
//  Created by yusiqi on 2/24/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblwelcome: UILabel!
    
    @IBOutlet weak var txtStatus: UITextField!
    
    var SetStatusDelegate: SetStatusDelegate?
    var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lblwelcome.text = "Welcome, \(name)"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func SetStatusAction(_ sender: Any) {
        guard let status = txtStatus.text else{return}
        SetStatusDelegate?.SetStatus(status: status)
        self.navigationController?.popViewController(animated: true)
    }
}
