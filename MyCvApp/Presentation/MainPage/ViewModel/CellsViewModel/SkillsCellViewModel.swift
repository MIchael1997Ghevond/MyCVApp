//
//  SkillsCellViewModel.swift
//  MyCvApp
//
//  Created by Quest Line on 13.07.22.
//

import Foundation

protocol SkillsCellViewModelType {
    func getSkillsCount() -> Int
    func getSkillBy(_ indexPath: IndexPath) -> String
}



final class SkillsCellViewModel: SkillsCellViewModelType {
    
    //MARK: - Properties -
    
    var skills: [String]
    
    
    
    //MARK: - Init -
    
    init(skills: [String]) {
        self.skills = skills
    }
    
    
    
    //MARK: - Methods -
    
    func getSkillsCount() -> Int {
        return self.skills.count
    }
    
    func getSkillBy(_ indexPath: IndexPath) -> String {
        self.skills[indexPath.row]
    }
}
