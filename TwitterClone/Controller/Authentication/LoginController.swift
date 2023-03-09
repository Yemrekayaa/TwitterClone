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
    
    private lazy var emailContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.snp.makeConstraints { make in
            make.height.equalTo(50)
        }
        let iv = UIImageView(image: UIImage(named: "mail"))
        view.addSubview(iv)
        iv.contentMode = .scaleAspectFit
        iv.tintColor = .white
        iv.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(8)
            make.centerY.equalToSuperview()
            make.height.width.equalTo(24)
        }
        return view
    }()
    
    private lazy var passwordContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        
        view.snp.makeConstraints { make in
            make.height.equalTo(50)
        }
        let iv = UIImageView(image: UIImage(named: "ic_lock_outline_white_2x"))
        view.addSubview(iv)
        iv.contentMode = .scaleAspectFit
        iv.tintColor = .white
        iv.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(8)
            make.centerY.equalToSuperview()
            make.height.width.equalTo(24)
        }
        return view
    }()
    
    // MARK: - Lifecycle
    
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
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView])
        stack.axis = .vertical
        stack.spacing = 8
        
        view.addSubview(stack)
        stack.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.safeAreaLayoutGuide.snp.bottom)
            make.left.right.equalToSuperview()
        }
    }
    


}
