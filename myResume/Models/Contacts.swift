//
//  Contacts.swift
//  myResume
//
//  Created by Kir Pir on 31.05.2020.
//  Copyright © 2020 Kirill_Presnyakov. All rights reserved.
//
struct LogIn {
    let login: String
    let password: String
}

extension LogIn {
    static func getUserName() -> String { "user" }
    static func getUserPassword() -> String { "password"}
}
