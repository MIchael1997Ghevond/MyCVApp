//
//  SkillsTableViewCell.swift
//  MyCvApp
//
//  Created by Quest Line on 13.07.22.
//

import UIKit

class SkillsSectionTableViewCell: UITableViewCell {
    
    //MARK: - Outlets -
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableviewHeightConstraints: NSLayoutConstraint!
    
    
    //MARK: - Properties -
    
    var skills: [String]!
    
    
    
    //MARK: - Dependencies -
    
    var skillVievModel: SkillsCellViewModelType!
    
    
    
    //MARK: - Lifecycle -
    
    override func layoutSubviews() {
        self.skillVievModel = SkillsCellViewModel(skills: skills)
        tableView.delegate = self
        tableView.dataSource = self
        DispatchQueue.main.async {
            self.tableviewHeightConstraints?.constant = self.tableView.contentSize.height
        }
    }
}


extension SkillsSectionTableViewCell: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.skillVievModel.getSkillsCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SkillTableViewCell = tableView.dequeReusableCell()
        cell.selectionStyle = .none
        let skill = self.skillVievModel.getSkillBy(indexPath)
        cell.setCell(with: skill)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        self.layoutSubviews()
    }
}
