//
//  ProjectsSectionTableViewCell.swift
//  MyCvApp
//
//  Created by Quest Line on 14.07.22.
//

import UIKit

class ProjectsSectionTableViewCell: UITableViewCell {
    
    //MARK: - Outlets -
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableviewHeightConstraints: NSLayoutConstraint!
    
    
    
    
    //MARK: - Properties -
    
    var projects: [Project]!
    
    
    
    //MARK: - Dependencies -
    
    var projectsVievModel: ProjectsCellViewModelType!
    
    
    
    //MARK: - Lifecycle -
    
    override func layoutSubviews() {
        self.projectsVievModel = ProjectsCellViewModel(projects: projects)
        tableView.delegate = self
        tableView.dataSource = self
        DispatchQueue.main.async {
            self.tableviewHeightConstraints?.constant = self.tableView.contentSize.height
        }
    }
}


extension ProjectsSectionTableViewCell: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.projectsVievModel.getProjectsCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ProjectsTableViewCell = tableView.dequeReusableCell()
        cell.selectionStyle = .none
        let project = self.projectsVievModel.getProjectBy(indexPath)
        cell.setCell(with: project)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        layoutSubviews()
    }
}
