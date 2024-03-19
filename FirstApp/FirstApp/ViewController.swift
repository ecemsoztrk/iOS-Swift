//
//  ViewController.swift
//  FirstApp
//
//  Created by Ecem Sena Ozturk on 10.01.2024.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeClicked(_ sender: Any) {
        imageView.image = UIImage(named: "ecosmerve1")
    }
    
    
}

