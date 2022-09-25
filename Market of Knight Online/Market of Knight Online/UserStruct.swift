//
//  UserStruct.swift
//  Market of Knight Online
//
//  Created by Ömer Faruk Kazar on 23.09.2022.
//

import Foundation

struct User {
    private let uuid: UUID = UUID()
    let id: String
    let password: String
    let nickname: String
    let job: Jobs
    var favorites: [Any] = []
}

enum Jobs: Int {
    case Warrior = 0, Priest, Rogue, Mage
}
