//
//  ViewController.swift
//  Calculator
//
//  Created by Ecem Sena Ozturk on 13.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func multipleClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                let result = firstNumber * secondNumber
                 resultLabel.text = String(result)
            }

        }
       
    }
    
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                let result = firstNumber / secondNumber
                 resultLabel.text = String(result)
            }

        }
       
    }
    
    
    @IBAction func minusClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                let result = firstNumber - secondNumber
                 resultLabel.text = String(result)
            }

        }
       
    }
    
    @IBAction func plusClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                let result = firstNumber + secondNumber
                 resultLabel.text = String(result)
            }
        }
    }
}

