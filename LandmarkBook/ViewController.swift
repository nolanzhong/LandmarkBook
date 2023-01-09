//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Nolan Zhong on 1/8/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tabView: UITableView!
    
    var rideNames = [String]()
    var rideImages = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabView.delegate = self
        tabView.dataSource = self
        
        
        rideNames.append("Hagrids Motorbike Adventure")
        rideNames.append("Velocicoaster")
        rideNames.append("Revenge of the Mummy")
        rideNames.append("Escape from Gringotts")
        rideNames.append("Spiderman Adventure")
        
        
        rideImages.append(UIImage(named: "hagridsmotorbike.jpeg")!)
        rideImages.append(UIImage(named: "velocicoaster.jpeg")!)
        rideImages.append(UIImage(named: "revenge of mummy.jpeg")!)
        rideImages.append(UIImage(named: "gringotts.jpeg")!)
        rideImages.append(UIImage(named: "spidermanride.jpeg")!)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // number of rows
        return rideNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration() // define what have to show in cell
        content.text = rideNames[indexPath.row] //displays corresponding index in ridename
        cell.contentConfiguration = content
        return cell
    }
}

