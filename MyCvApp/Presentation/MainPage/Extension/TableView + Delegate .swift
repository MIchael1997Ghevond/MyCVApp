//
//  TableView + Delegate .swift
//  MyCvApp
//
//  Created by Quest Line on 13.07.22.
//

import UIKit


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell: ContactsTableViewCell = tableView.dequeReusableCell()
            cell.selectionStyle = .none
            let contacts = self.mainViewModel.getContacts()
            cell.setCell(with: contacts)
            return cell
        case 1:
            let cell: AboutTableViewCell = tableView.dequeReusableCell()
            cell.selectionStyle = .none
            let aboutText = self.mainViewModel.getAboutText()
            cell.setCell(with: aboutText)
            return cell
        case 2:
            let cell: LanguageTableViewCell = tableView.dequeReusableCell()
            cell.selectionStyle = .none
            let languages = self.mainViewModel.getLanguages()
            cell.setCell(with: languages)
            return cell
        case 3:
            let cell: SkillsSectionTableViewCell = tableView.dequeReusableCell()
            cell.selectionStyle = .none
            let skills = self.mainViewModel.getSkills()
            cell.skills = skills
            return cell
        case 4:
            let cell: ProjectsSectionTableViewCell = tableView.dequeReusableCell()
            cell.selectionStyle = .none
            let projects = self.mainViewModel.getProjects()
            cell.projects = projects
            return cell
        default:
            let cell: ContactsTableViewCell = tableView.dequeReusableCell()
            cell.selectionStyle = .none
            let contacts = self.mainViewModel.getContacts()
            cell.setCell(with: contacts)
            return cell
        }
    }
    
  
}



