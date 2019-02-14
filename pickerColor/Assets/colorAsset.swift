//
//  colorAsset.swift
//  pickerColor
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import Foundation
import UIKit

enum ColorAsset : String {
    case green
    case orange
    case purple
    
}

extension ColorAsset {
    var color : UIColor {
        return UIColor(named: self.rawValue)!
    }
}
