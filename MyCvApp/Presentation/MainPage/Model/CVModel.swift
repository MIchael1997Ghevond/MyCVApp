//
//  CVModel.swift
//  MyCvApp
//
//  Created by Quest Line on 13.07.22.
//

import Foundation


struct CVModel {
    var contacts: Contacts
    var about: String
    var language: Language
    var skills: [String]
    var projects: [Project]

}

struct Contacts {
    var email: String
    var adress: String
    var phone: String
}

struct Language {
    var armenian: String
    var english: String
    var russian: String
}

struct Project {
    var name: String
    var role: String
    var duration: String
}
