//
//  FeedController.swift
//  TwitterClone
//
//  Created by Yunus Emre Kaya on 2.03.2023.
//

import UIKit

class FeedController: UIViewController {

    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    

    // MARK: - Helpers

    func configureUI(){
        let twitterImage = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        twitterImage.contentMode = .scaleAspectFit
        navigationItem.titleView = twitterImage
        
        view.backgroundColor = .white
        
    }
    

}
