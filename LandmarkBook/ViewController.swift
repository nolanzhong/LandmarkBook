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
    
    var chosenName = ""
    var chosenImage = UIImage()
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenName = rideNames[indexPath.row]
        chosenImage = rideImages[indexPath.row]
        performSegue(withIdentifier: "todetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "todetailsVC" {
            let destinationVC = segue.destination as! DetailVC
            destinationVC.selectedRide = chosenName
            destinationVC.selectedImage = chosenImage
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.rideNames.remove(at: indexPath.row)
            self.rideImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

