//
//  ViewController.swift
//  CurrencyConvert
//
//  Created by Ecem Sena Ozturk on 12.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var chfLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var tryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getRatesClicked(_ sender: Any) {
        // 1- Request && Session
        // 2- Response && Data
        // 3- Parsing && Json Serialization
        
        // 1-
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=4a990ae1cc0ef5a920e4c7e9eeb1123c")
        let session = URLSession.shared
        //Closure
        
        let task = session.dataTask(with: url!) { data, response, error in
            if error != nil {
                let alert = UIAlertController(title: "error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default)
                alert.addAction(okButton)
                self.present(alert, animated: true)
            } else {
                // 2.
                if data != nil {
                    do {
                        let JSONResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String, Any>
                        
                        //ASYNC
                        DispatchQueue.main.async {
                            if let rates = JSONResponse["rates"] as? [String : Any] {
                                if let cad = rates["CAD"] {
                                    self.cadLabel.text = "CAD: \(cad)"
                                }
                                if let rates = JSONResponse["rates"] as? [String : Any] {
                                    if let chf = rates["CHF"] {
                                        self.chfLabel.text = "CHF: \(chf)"
                                    }
                                }
                                if let rates = JSONResponse["rates"] as? [String : Any] {
                                    if let gbp = rates["GBP"] {
                                        self.gbpLabel.text = "GBP: \(gbp)"
                                    }
                                }
                                if let rates = JSONResponse["rates"] as? [String : Any] {
                                    if let jpy = rates["JPY"] {
                                        self.jpyLabel.text = "JPY: \(jpy)"
                                    }
                                }
                                if let rates = JSONResponse["rates"] as? [String : Any] {
                                    if let usd = rates["USD"] {
                                        self.usdLabel.text = "USD: \(usd)"
                                    }
                                }
                                if let rates = JSONResponse["rates"] as? [String : Any] {
                                    if let tryy = rates["TRY"] {
                                        self.tryLabel.text = "TRY: \(tryy)"
                                    }
                                }
                                
                            }
                        }
                        
                    }catch {
                        print("error")
                    }
                }
                
            }
        }
        task.resume()
    }
    
    
}

