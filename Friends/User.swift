//
//  User.swift
//  Friends
//
//  Created by Emile Wong on 11/6/2021.
//

import Foundation

struct User: Codable, Identifiable{
    var id: String
    var name: String
    var age: Int
    var company: String
    var friends: [Friend]
}

struct Friend: Codable, Identifiable {
    var id: String
    var name: String
}
