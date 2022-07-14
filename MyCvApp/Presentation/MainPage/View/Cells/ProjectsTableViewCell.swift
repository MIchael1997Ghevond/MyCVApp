//
//  ProjectsTableViewCell.swift
//  MyCvApp
//
//  Created by Quest Line on 14.07.22.
//

import UIKit

class ProjectsTableViewCell: UITableViewCell {
    
    //MARK: - Outlets -
    
    @IBOutlet weak var projectNameLabel: UILabel!
    @IBOutlet weak var developerRoleLabel: UILabel!
    @IBOutlet weak var projectDurationLabel: UILabel!
    
    
    //MARK: - Methods -

    func setCell(with:  Project) {
        self.projectNameLabel.text = with.name
        self.developerRoleLabel.text = with.role
        self.projectDurationLabel.text = with.duration
    }
}
