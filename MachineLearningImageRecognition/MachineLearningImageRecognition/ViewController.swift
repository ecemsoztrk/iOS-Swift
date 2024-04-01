//
//  ViewController.swift
//  MachineLearningImageRecognition
//
//  Created by Ecem Sena Ozturk on 1.04.2024.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var chosenImage = CIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func changeClicked(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true)

    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true)
        
        
        if let ciImage = CIImage(image: imageView.image!) {
            chosenImage = ciImage
        }
        
        regocnizeImage(image: chosenImage)
    }
    
    
    func regocnizeImage(image: CIImage) {
        
        //1- Request
        //2- Handler
        
        resultLabel.text = "Finding, Please wait..."
        
        if let model = try? VNCoreMLModel(for: MobileNetV2().model) {
            let request = VNCoreMLRequest(model: model) { vnrequest, error in
                if let result = vnrequest.results as? [VNClassificationObservation] {
                    if result.count > 0 {
                        let topResult = result.first
                        
                        DispatchQueue.main.async {
                            let confidenceLevel = (topResult?.confidence ?? 0) * 100
                            let rounded = Int (confidenceLevel * 100 ) / 100
                            self.resultLabel.text = "\(rounded) % it's \(topResult!.identifier)"
                        }
                    }
                }
            }
            let handler = VNImageRequestHandler(ciImage: image)
            DispatchQueue.global(qos: .userInteractive).async {
                do {
                    try handler.perform([request])
                }catch {
                    print("error")
                }
            }
        }
        
    }
}

