//
//  User.swift
//  TwitterClone
//
//  Created by Yunus Emre Kaya on 15.03.2023.
//

import Foundation

struct User {
    let fullname: String
    let email: String
    let username: String
    let profileImageUrl: URL?
    let uid: String
    
    init(uid: String, dictionary: [String: AnyObject]) {
        self.uid = uid
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = URL(string: dictionary["profileImageUrl"] as? String ?? "")
    }
}
