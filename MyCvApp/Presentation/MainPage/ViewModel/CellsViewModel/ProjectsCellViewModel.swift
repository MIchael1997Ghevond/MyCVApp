//
//  ProjectsCellViewModel.swift
//  MyCvApp
//
//  Created by Quest Line on 14.07.22.
//

import Foundation


protocol ProjectsCellViewModelType {
    func getProjectsCount() -> Int
    func getProjectBy(_ indexPath: IndexPath) -> Project
}



final class ProjectsCellViewModel: ProjectsCellViewModelType {
    
    //MARK: - Properties -
    
    var projects: [Project]
    
    
    
    //MARK: - Init -
    
    init(projects: [Project]) {
        self.projects = projects
    }
    
    
    
    //MARK: - Methods -
    
    func getProjectsCount() -> Int {
        return self.projects.count
    }
    
    func getProjectBy(_ indexPath: IndexPath) -> Project {
        self.projects[indexPath.row]
    }
}
