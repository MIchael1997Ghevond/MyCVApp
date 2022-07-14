//
//  MainRepo.swift
//  MyCvApp
//
//  Created by Quest Line on 14.07.22.
//

import Foundation

protocol MainRepoType {
    func getData() -> CVModel
}

final class MainRepo: MainRepoType {
    
    //MARK: - Properties -
    
    var cvModel: CVModel
    
    
    
    //MARK: - Init -
    
    init() {
        self.cvModel = CVModel(contacts: Contacts(email: "michael.ghevondyan@icloud.com", adress: "Armenia, Yerevan", phone: "+37494102296"), about: "Ios developer with over 3+ years of IT experience in Analysis, Design, and Development of various Mobile Application development for iPhone using Swift, UIKit, Location, MapKit, CocoaTouch and cocoa service Frameworks. Experience in developing mobile applications that provide enhanced online shopping experience. Self-motivated and fast learner who is eager to learn and get comfortable with new tools and technologies if the position requires.", language: Language(armenian: "C2", english: "B1", russian: "C2"), skills: ["Swift","IOS","Java","Android","Restful API, gRPC, GraphQl, Amplify","Architecture patterns (MVVM, MVC)","Git/Bitbucket","Jira / Slack / Trello","Data Structure","Design patterns","Firebase, Realm","Crypto Network App Development"], projects: [Project(name: "Checksign", role: "Network Service, UI", duration: "1,5 month"),Project(name: "JLF Report app", role: "Working alone", duration: "1 month"),Project(name: "Olo app", role: "Working alone", duration: "6 month")])
    }
    
    
    
    //MARK: - Methods -
    
    func getData() -> CVModel {
        self.cvModel
    }
}
