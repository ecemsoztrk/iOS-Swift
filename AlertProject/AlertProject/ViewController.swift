//
//  ViewController.swift
//  AlertProject
//
//  Created by Ecem Sena Ozturk on 19.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            }
    
    @IBAction func signupClicked(_ sender: Any) {
        /*
         let alert = UIAlertController(title: "Error", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
         print("button clicked")
         }
         alert.addAction(okButton)
         self.present(alert, animated: true, completion: nil)
         */
        
        
        
        
        
        /* !!!!!!!!!!!!!!!!!!!!!!!!!!!BİRİNCİ YÖNTEM !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
         
         
         if usernameText.text == "" {
         let alert = UIAlertController(title: "Error", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
         alert.addAction(okButton)
         self.present(alert, animated: true, completion: nil)
         } else if passwordText.text == ""{
         let alert = UIAlertController(title: "Error", message: "Password not found!", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
         alert.addAction(okButton)
         self.present(alert, animated: true, completion: nil)
         } else if password2Text.text != passwordText.text {
         let alert = UIAlertController(title: "Error", message: "Password and password again not match!", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
         alert.addAction(okButton)
         self.present(alert, animated: true, completion: nil)
         }
         */
        
        
        
        // !!!!!!!!!!!!!!!!!!!!!!!!! İKİNCİ YÖNTEM !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        
        
        if usernameText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username not found")
        } else if passwordText.text == ""{
            makeAlert(titleInput: "Error", messageInput: "Password not found")
        } else if password2Text.text != passwordText.text {
            makeAlert(titleInput: "Error", messageInput: "Password do not match")
        }
        
        func makeAlert(titleInput:String, messageInput: String) {
            let alert = UIAlertController(title: titleInput, message:messageInput, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
}
