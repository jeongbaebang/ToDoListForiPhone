//
//  User.swift
//  ToDoList
//
//  Created by jeongbae bang on 12/28/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
