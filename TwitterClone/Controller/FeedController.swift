//
//  FeedController.swift
//  TwitterClone
//
//  Created by Yunus Emre Kaya on 2.03.2023.
//

import UIKit
import SDWebImage

class FeedController: UIViewController {

    // MARK: - Properties
    
    var user: User? {
        didSet{
            print("FeedController User: \(user?.username)")
            configureLeftBarButton()
            
        }
    }
    
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
    
    func configureLeftBarButton(){
        guard let user = user else {return}
        let profileImageView = UIImageView()
        profileImageView.snp.makeConstraints { make in
            make.width.height.equalTo(32)
        }
        profileImageView.layer.cornerRadius = 32 / 2
        profileImageView.backgroundColor = .twitterBlue
        profileImageView.clipsToBounds = true
        
        profileImageView.sd_setImage(with: user.profileImageUrl)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: profileImageView)
        
    }
    

}
