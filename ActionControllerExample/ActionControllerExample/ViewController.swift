//
//  ViewController.swift
//  ActionControllerExample
//
//  Created by yusiqi on 2/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    var txtField: UITextField?
    @IBOutlet weak var lblstock: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showAlertController(_ sender: Any) {
        let alertController = UIAlertController(title: "Alert, Controller Title", message: "Alert Controller Message", preferredStyle: .alert)
        
        let OKButton = UIAlertAction(title: "OK", style: .default){action in
            self.lblstock.text = self.txtField?.text
        }
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel){action in
        }
        
        alertController.addTextField{ lblTextField in
            self.txtField = lblTextField
            lblTextField.placeholder = "Type Stock Value"
        }
        
        alertController.addAction(OKButton)
        alertController.addAction(cancelButton)
        self.present(alertController, animated: true)
    }
}

