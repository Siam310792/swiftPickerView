//
//  ViewController.swift
//  pickerColor
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "pickColor") {
            let destVC = segue.destination as! ColorPickerViewController
            destVC.delegate = self
        }
    }
    

}

extension ViewController:ColorPickerViewDelegate {
    func userDidChooseColor(color: UIColor) {
        self.view.backgroundColor = color
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
