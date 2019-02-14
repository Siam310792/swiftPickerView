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
            destVC.completionHandler = { newColor in
                self.userDidChooseColor(newColor:newColor)
            }
        }
    }
}

extension ViewController {
    func userDidChooseColor(newColor: UIColor) {
        self.dismiss(animated: true, completion: {
            let lastColor = self.view.backgroundColor!
            
            UIView.animate(withDuration: 0.5, animations: {
                self.view.backgroundColor = newColor
            })
            
            self.userConfirmChoose(lastColor: lastColor, newColor: newColor)
        })
    }
    
    func userConfirmChoose(lastColor:UIColor, newColor:UIColor) {
        
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        if (lastColor == newColor) {
            alert.title = "Erreur"
            alert.message = "Votre fond d'écran est déjà de cette couleur !"
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler:nil))
        } else {
            alert.title = "Confirmation"
            alert.message = "Voulez-vous conserver la nouvelle couleur ?"
            alert.addAction(UIAlertAction(title: "Oui", style: .default, handler: { action in
                self.view.backgroundColor = newColor
            }))
            alert.addAction(UIAlertAction(title: "Non", style: .cancel, handler: { action in
                UIView.animate(withDuration: 0.5, animations: {
                    self.view.backgroundColor = lastColor
                })
            }))
        }
        self.present(alert, animated: true)
    }
}
