//
//  ConversationsController.swift
//  TwitterClone
//
//  Created by Yunus Emre Kaya on 2.03.2023.
//

import UIKit

class ConversationsController: UIViewController {

    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    

    // MARK: - Helpers

    func configureUI(){
        view.backgroundColor = .white
        navigationItem.title = "Messages"
    }

}
