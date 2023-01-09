//
//  DetailVC.swift
//  LandmarkBook
//
//  Created by Nolan Zhong on 1/9/23.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var rideLabel: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedRide = ""
    var selectedImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        rideLabel.text = selectedRide
        imageView.image = selectedImage
    }
    

   

}
