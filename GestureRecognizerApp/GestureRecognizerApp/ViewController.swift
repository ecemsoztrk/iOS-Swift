//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Ecem Sena Ozturk on 19.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isJames = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //diyorum ki kullanıcı dokunduğunda değişsin oke
        imageView.isUserInteractionEnabled = true
        
        //görselin üstüne tıklayınca değiştiriyor
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    @objc func changePic() {
        
        if isJames == true {
            imageView.image = UIImage(named: "patrick")
            myLabel.text = "Patrick"
            isJames = false
        } else {
            imageView.image = UIImage(named: "sponge")
            myLabel.text = "SpongeBob"
            isJames = true
        }
    }

}

