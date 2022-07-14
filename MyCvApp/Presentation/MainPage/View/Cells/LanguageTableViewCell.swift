//
//  LanguageTableViewCell.swift
//  MyCvApp
//
//  Created by Quest Line on 13.07.22.
//

import UIKit

class LanguageTableViewCell: UITableViewCell {
    
    //MARK: - Outlets -

    @IBOutlet weak var russianLevel: UILabel!
    @IBOutlet weak var armenianLevel: UILabel!
    @IBOutlet weak var englishLevel: UILabel!
    
    
    
    //MARK: - Methods -
    
    func setCell(with: Language) {
        self.russianLevel.text = with.russian
        self.armenianLevel.text = with.armenian
        self.englishLevel.text = with.english
    }
}
