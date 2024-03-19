//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Ecem Sena Ozturk on 23.01.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        landmarkNames.append("1")
        landmarkNames.append("2")
        landmarkNames.append("3")
        landmarkNames.append("4")
        
        
        landmarkImages.append(UIImage(named: "1.jpg")!)
        landmarkImages.append(UIImage(named: "2.jpg")!)
        landmarkImages.append(UIImage(named: "3.jpg")!)
        landmarkImages.append(UIImage(named: "4.jpg")!)
        
        
    }
    
    //table view kullanabilmek için kullanmalıyız
    
    //kaç tane girdi girileceğini belirtiyoruz
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
       //bu kullanım daha sonra kaldırılacak ------> cell.textLabel?.text = "text"
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]
        performSegue(withIdentifier: "theDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "theDetailsVC" {
            //gideceğin hedefi tanımlıyorsun
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkImage = chosenLandmarkImage
        }
    }

}

