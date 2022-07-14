//
//  AboutTableViewCell.swift
//  MyCvApp
//
//  Created by Quest Line on 13.07.22.
//

import UIKit

class AboutTableViewCell: UITableViewCell {
    
    //MARK: - Outlets -
    
    @IBOutlet weak var aboutTextView: UITextView!
    
    
    
    //MARK: - Lifecycle -
    
    override func layoutSubviews() {
        self.aboutTextView.isEditable = false
    }
    
    
    
    //MARK: - Methods -
    
    func setCell(with: String) {
        self.aboutTextView.text = with
    }
    
}
