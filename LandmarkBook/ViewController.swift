//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Nolan Zhong on 1/8/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tabView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabView.delegate = self
        tabView.dataSource = self
        
        var rideNames = [String]()
        rideNames.append("Hagrids Motorbike Adventure")
        rideNames.append("Velocicoaster")
        rideNames.append("Revenge of the Mummy")
        rideNames.append("Escape from Gringotts")
        rideNames.append("Spiderman Adventure")
        
        var rideImages = [UIImage]()
        rideImages.append(UIImage(named: "hagridsmotorbike.jpeg")!)
        rideImages.append(UIImage(named: "velocicoaster.jpeg")!)
        rideImages.append(UIImage(named: "revenge of mummy.jpeg")!)
        rideImages.append(UIImage(named: "gringotts.jpeg")!)
        rideImages.append(UIImage(named: "spidermanride.jpeg")!)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // number of rows
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration() // define what have to show in cell
        content.text = "TableView"
        content.secondaryText = "test"
        cell.contentConfiguration = content
        return cell
    }
}

