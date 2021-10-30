//
//  Contacts.swift
//  MVVM_Swift
//
//  Created by DREAMONLINE on 29/10/21.
//

import Foundation


// MARK: - Contracts
struct Contracts: Codable {
    let contacts: [Contact]
}

// MARK: - Contact
struct Contact: Codable {
    let id, name, email: String
    let address: Address
    let gender: Gender
    let phone: Phone
}

enum Address: String, Codable {
    case xxXxXxxxXStreetXCountry = "xx-xx-xxxx,x - street, x - country"
}

enum Gender: String, Codable {
    case female = "female"
    case male = "male"
}

// MARK: - Phone
struct Phone: Codable {
    let mobile: Mobile
    let home, office: Home
}

enum Home: String, Codable {
    case the00000000 = "00 000000"
}

enum Mobile: String, Codable {
    case the910000000000 = "+91 0000000000"
}
