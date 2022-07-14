//
//  TableViewCell + Extension.swift
//  MyCvApp
//
//  Created by Quest Line on 13.07.22.
//

import UIKit


protocol CellIdentifiable {
    static var cellIdentifier: String { get }
}

extension CellIdentifiable where Self: UITableViewCell {
    static var cellIdentifier: String {
        String(describing: self)
    }
}

extension UITableViewCell: CellIdentifiable {}
