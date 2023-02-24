//
//  ViewController.swift
//  ProtocolsAndDelegateExample
//
//  Created by yusiqi on 2/24/23.
//

/*
 1.create a swift file which has a protocol
 2.this protocol will have the functions that would have to be implemented when someone conforms to it
 3.in the second VC we will add an optional variable for the protocol
 4.in the second VC whenever an action is taken we weill call the protocol function
 5.in the first VC conform to the protocol
 6.you would have to implement the function defined int the protocol
 7.in the function do your implementation(uidate UI ect.)
 8.when we are going to second VC, start listening to the second VC's varibale defined in step 3.
 */


import UIKit

class ViewController: UIViewController, SetStatusDelegate{
    

    @IBOutlet weak var txtname: UITextField!
    
    @IBOutlet weak var lblstatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToSecondVC(_ sender: Any) {
        performSegue(withIdentifier: "segueSecondVC", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueSecondVC"{
            let secondVC = segue.destination as! SecondViewController
            secondVC.SetStatusDelegate = self
            guard let name = txtname.text else{return}
            secondVC.name = name
        }
            
    }
    
    func SetStatus(status: String) {
        lblstatus.text = "My Status is: \(status)"
    }
    
}

