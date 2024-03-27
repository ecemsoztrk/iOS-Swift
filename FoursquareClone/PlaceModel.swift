//
//  PlaceModel.swift
//  FoursquareClone
//
//  Created by Ecem Sena Ozturk on 20.03.2024.
//

import Foundation
import UIKit

class PlaceModel {
    static let sharedInstance = PlaceModel()
    
    var placeName = ""
    var placeType = ""
    var placeAtmosphere = ""
    var placeImage = UIImage()
    var placeLongitude = ""
    var placeLatitude = ""
    
    private init() {}
}
