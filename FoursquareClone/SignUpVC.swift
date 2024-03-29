//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Ecem Sena Ozturk on 12.03.2024.
//
import UIKit
import Parse

class SignUpVC: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func signInClicked(_ sender: Any) {
        if usernameText.text != "" && passwordText.text != "" {
            PFUser.logInWithUsername(inBackground: usernameText.text!, password: passwordText.text!) { (user, error) in
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                }else {
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                }
            }
        }
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        
        if usernameText.text != "" && passwordText.text != "" {
            let user = PFUser()
            user.username = usernameText.text!
            user.password = passwordText.text!
            
            user.signUpInBackground{(succes, error) in
                if error != nil {
                    self.makeAlert(titleInput:"Error", messageInput: error?.localizedDescription ?? "error!!!!!")
                }else {
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                }
                
            }
            
        }else {
            makeAlert(titleInput: "Error", messageInput: "Username/Password ??")
        }
    }
    
    
    func makeAlert(titleInput: String, messageInput : String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}



