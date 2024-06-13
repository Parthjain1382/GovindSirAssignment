//
//  Data Model.swift
//  tableFinal
//
//  Created by E5000846 on 06/06/24.
//

import Foundation
import UIKit

enum cellType {
    case image
    case textWithimage
}


protocol DataModel {
    var type : cellType{
        get
    }
}

struct imageModel : DataModel{
    var type: cellType
    var image : UIImage
    
}

struct imageWithTextModel: DataModel{
    var type: cellType
    var text: String
    var desc: String
    var image: UIImage
}


struct TableSourceData {
    
    static func dataPrepare() -> [DataModel] {
        
        var arrayOfData = [DataModel]()
        
        arrayOfData.append(imageModel(type: .image, image: UIImage(named: "image1")!))
        arrayOfData.append(imageWithTextModel(type: .textWithimage, text: "Ayush Bhople", desc: "Beauty Sunset", image: UIImage(named: "image2")!))
        arrayOfData.append(imageModel(type: .image, image: UIImage(named: "image5")!))
        arrayOfData.append(imageWithTextModel(type: .textWithimage, text: "Sagar Arora", desc: "What a Beautiful Day", image: UIImage(named: "image1")!))
        arrayOfData.append(imageModel(type: .image, image: UIImage(named: "image3")!))
        arrayOfData.append(imageWithTextModel(type: .textWithimage, text: "Pranay Jain", desc: "What a Beautiful Day", image: UIImage(named: "image5")!))
        
        return arrayOfData
        
    }
    
}

