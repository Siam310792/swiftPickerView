//
//  ColorPickerViewController.swift
//  pickerColor
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {

    var delegate : ColorPickerViewDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
     /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func greenButton(_ sender: Any) {
        delegate?.userDidChooseColor(newColor: ColorAsset.green.color)
    }
    
    @IBAction func orangeButton(_ sender: Any) {
        delegate?.userDidChooseColor(newColor: ColorAsset.orange.color)
    }
    
    @IBAction func purpleButton(_ sender: Any) {
        delegate?.userDidChooseColor(newColor: ColorAsset.purple.color)
    }
}

protocol ColorPickerViewDelegate {
    func userDidChooseColor(newColor: UIColor)
}
