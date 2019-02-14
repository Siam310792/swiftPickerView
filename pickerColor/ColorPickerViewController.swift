//
//  ColorPickerViewController.swift
//  pickerColor
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {

    var completionHandler: ((UIColor) -> ())?
    
    @IBAction func greenButton(_ sender: Any) {
        completionHandler?(ColorAsset.green.color)
    }
    
    @IBAction func orangeButton(_ sender: Any) {
        completionHandler?(ColorAsset.orange.color)
    }
    
    @IBAction func purpleButton(_ sender: Any) {
        completionHandler?(ColorAsset.purple.color)
    }
}

