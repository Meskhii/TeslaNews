//
//  UITableViewCell+Extension.swift
//  TeslaNews
//
//  Created by Admin on 08.06.2021.
//

import UIKit

extension UITableViewCell {
    
    static var identifier: String { String(describing: self) }
    
    static var nib: UINib { UINib(nibName: identifier, bundle: Bundle.main) }
}


