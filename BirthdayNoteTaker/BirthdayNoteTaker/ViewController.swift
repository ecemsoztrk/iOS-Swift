//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Ecem Sena Ozturk on 15.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var birthday: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        
        if let newName = storedName as? String {
            name.text = newName
        }
        if let newBirthday = storedBirthday as? String {
            birthday.text = newBirthday
        }
    }

    @IBAction func saveClicked(_ sender: Any) {
        //name.text = nameTextField.text
        //birthday.text = birthdayTextField.text şeklinde de kullanılabilir
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        name.text = "Name: \(nameTextField.text!)"
        birthday.text = "Birthday: \(birthdayTextField.text!)"
    }
    
    
    
    @IBAction func deleteClicked(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        if ((storedName as? String) != nil) {
            UserDefaults.standard.removeObject(forKey: "name")
            name.text = "Name:"
        }
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthday.text = "Birthday:"
        }
        
    }
    
    
}

