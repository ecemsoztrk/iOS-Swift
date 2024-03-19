//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Ecem Sena Ozturk on 9.02.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //değiştirilmeyen dark/light mod
        overrideUserInterfaceStyle = .light
        

    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        } else {
            changeButton.tintColor = UIColor.blue
        }
    }


}

