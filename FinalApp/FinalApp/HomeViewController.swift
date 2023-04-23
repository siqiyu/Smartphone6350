//
//  HomeViewController.swift
//  FinalApp
//
//  Created by yusiqi on 4/22/23.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UploadImageProtocol {

    var images : [UIImage] = [UIImage]()
    var location = [String]()
    var imageTitle : [String] = [String]()
    
    var uploadImageVC : UIViewController?
    
    @IBOutlet weak var tblViewController: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        imageTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.txtTitleH.text = imageTitle[indexPath.row]
        cell.imgViewH.image = images[indexPath.row]
        cell.txtLocalH.text = location[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func uploadedImageDelegate(img: UIImage, locationImg: String, titleImg: String) {
        images.append(img)
        location.append(locationImg)
        imageTitle.append(titleImg)
        
        tblViewController.reloadData()
    }
}
