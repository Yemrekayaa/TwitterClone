//
//  Utilities.swift
//  TwitterClone
//
//  Created by Yunus Emre Kaya on 9.03.2023.
//

import UIKit

class Utilities {
    
    func inputContainerView(withImage image: UIImage?, textField: UITextField) -> UIView{
        let view = UIView()
        view.snp.makeConstraints { make in
            make.height.equalTo(50)
        }
        
        let iv = UIImageView(image: image)
        
        view.addSubview(iv)
        iv.contentMode = .scaleAspectFit
        iv.tintColor = .white
        
        iv.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.width.equalTo(24)
        }
        
        view.addSubview(textField)
        
        textField.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(iv.snp.right).offset(8)
            make.right.equalToSuperview()

        }
        
        let dividerView = UIView()
        dividerView.backgroundColor = .white
        view.addSubview(dividerView)
        dividerView.snp.makeConstraints { make in
            make.top.equalTo(textField.snp.bottom).offset(6)
            make.left.equalTo(iv.snp.left)
            make.right.equalTo(textField.snp.right)
            make.height.equalTo(0.7)
        }
        
        
        return view
    }
    
    func textField(withPlaceHolder placeHolder: String) -> UITextField{
        let tf = UITextField()
        tf.textColor = .white
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        return tf
    }
    
    func attributedButton(_ firstPart: String, _ secondPart: String) -> UIButton {
        let button = UIButton()
        
        let attributedTitle = NSMutableAttributedString(string: firstPart, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor.white])
        attributedTitle.append(NSAttributedString(string: secondPart, attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor.white]))
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        return button
    }
}
