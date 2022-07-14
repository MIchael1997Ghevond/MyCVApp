//
//  ViewController.swift
//  MyCvApp
//
//  Created by Quest Line on 13.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlets -
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    
    
    //MARK: - Dependencies -
    
    var mainViewModel: MainViewModelType!
    
    
    
    //MARK: - Lifecycle -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainViewModel = MainViewModel()
        self.configUI()
    }
    
    
    
    //MARK: - Methods -
    
    func configUI() {
        self.profileImage.layer.masksToBounds = false
        profileImage.layer.cornerRadius = profileImage.frame.height/2
        profileImage.clipsToBounds = true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
}

