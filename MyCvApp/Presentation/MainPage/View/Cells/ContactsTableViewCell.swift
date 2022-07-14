//
//  ContactsTableViewCell.swift
//  MyCvApp
//
//  Created by Quest Line on 13.07.22.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {
    
    //MARK: - Outlets -

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    
    
    //MARK: - Methods -

    func setCell(with: Contacts) {
        self.emailLabel.text = with.email
        self.adressLabel.text = with.adress
        self.phoneLabel.text = with.phone
    }
}
