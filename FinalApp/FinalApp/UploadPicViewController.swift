//
//  UploadPicViewController.swift
//  FinalApp
//
//  Created by yusiqi on 4/22/23.
//

import UIKit
import CoreLocation

class UploadPicViewController: UIViewController,  UIImagePickerControllerDelegate, UINavigationControllerDelegate, CLLocationManagerDelegate{
    
    
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var tblLocation: UILabel!
    
    var uploadProtocol : UploadImageProtocol?
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else{return}
        
        getAddressFromLocation(location: location)
    }
    
    func getAddressFromLocation(location: CLLocation){
        let geoCoder = CLGeocoder()
        geoCoder.reverseGeocodeLocation(location) { placemarks, error in
            if error != nil {
                print(error as Any)
                return
            }
            var address = ""
            guard let place = placemarks?.first else{return}
            if place.name != nil {
                address += place.name! + ", "
            }
            if place.locality != nil {
                address += place.locality! + ", "
            }
            if place.subLocality != nil {
                address += place.subLocality! + ", "
            }
            if place.postalCode != nil {
                address += place.postalCode!
            }
            self.tblLocation.text = address
            print(address)
        }
    }
    
    @IBAction func takeAPictureAction(_ sender: Any) {
        let actionSheet = UIAlertController(title: "take a picture", message: "Take a picture", preferredStyle: .alert)
        
        let cameraAction = UIAlertAction(title: "Camera", style: .default){ action in
            if UIImagePickerController.isSourceTypeAvailable(.camera){
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = UIImagePickerController.SourceType.camera;
                imagePicker.allowsEditing = false
                self.present(imagePicker, animated: true)
            }
        }
        let photoAction = UIAlertAction(title: "Photo", style: .default){ action in
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary;
                imagePicker.allowsEditing = false
                self.present(imagePicker, animated: true)
            }
            
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel){ action in
            
        }
        actionSheet.addAction(cameraAction)
        actionSheet.addAction(photoAction)
        actionSheet.addAction(cancel)
        
        self.present(actionSheet, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            imgView.image = image
        }
        picker.dismiss(animated: true)
    }
    
    
    @IBAction func uploadAction(_ sender: Any) {
        guard let img = imgView.image else {return}
        guard let location = tblLocation.text else {return}
        guard let title = txtTitle.text else {return}
        
        uploadProtocol?.uploadedImageDelegate(img: img, locationImg: location, titleImg: title)
        self.tabBarController?.selectedIndex = 0 
    }
}
