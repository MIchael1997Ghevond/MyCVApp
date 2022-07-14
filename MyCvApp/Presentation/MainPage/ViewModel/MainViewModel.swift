//
//  MainViewModel.swift
//  MyCvApp
//
//  Created by Quest Line on 13.07.22.
//

import Foundation


protocol MainViewModelType {
    func getContacts() -> Contacts
    func getAboutText() -> String
    func getLanguages() -> Language
    func getSkills() -> [String]
    func getProjects() -> [Project]
}



final class MainViewModel: MainViewModelType {

    //MARK: - Dependencies -
    
    var mainRepo: MainRepoType!
    
    
    
    //MARK: - Init -
    
    init() {
        mainRepo = MainRepo()
    }
    
    
    
    //MARK: - Functions -
    
    func getContacts() -> Contacts {
        return self.mainRepo.getData().contacts
    }
    
    func getAboutText() -> String {
        return self.mainRepo.getData().about
    }
    
    func getLanguages() -> Language {
        return self.mainRepo.getData().language
    }
    
    func getSkills() -> [String] {
        return self.mainRepo.getData().skills
    }
    
    func getProjects() -> [Project] {
        return self.mainRepo.getData().projects
    }
}



