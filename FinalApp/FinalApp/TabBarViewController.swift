//
//  TabBarViewController.swift
//  FinalApp
//
//  Created by yusiqi on 4/22/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let homeViewController = viewControllers?[0] as! HomeViewController
        let uploadPicVC = viewControllers?[1] as! UploadPicViewController
        uploadPicVC.uploadProtocol = homeViewController.self
    }

}
