//
//  SkillTableViewCell.swift
//  MyCvApp
//
//  Created by Quest Line on 13.07.22.
//

import UIKit

class SkillTableViewCell: UITableViewCell {
    
    //MARK: - Outlets -
    
    @IBOutlet weak var skillName: UILabel!
    @IBOutlet weak var dot: UIView!
    
    
    
    //MARK: - Methods -

    func setCell(with: String) {
        self.dot.layer.masksToBounds = false
        dot.layer.cornerRadius = dot.frame.height/2
        dot.clipsToBounds = true
        self.skillName.text = with
    }
}
