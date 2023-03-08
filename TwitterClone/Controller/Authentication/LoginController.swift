//
//  LoginController.swift
//  TwitterClone
//
//  Created by Yunus Emre Kaya on 8.03.2023.
//

import UIKit

class LoginController: UIViewController {

    // MARK: - Properties
    
    private let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.image = UIImage(named: "TwitterLogo.jpg")
        
        return iv
    }()
    
    // MARK: - Lifecyclestatic let identifier =
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Selectors

    // MARK: - Helpers

    func configureUI(){
        view.backgroundColor = .twitterBlue
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        view.addSubview(logoImageView)
        logoImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.width.height.equalTo(150)
        }
    }
    


}
