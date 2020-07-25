//
//  Model.swift
//  Week 3
//
//  Created by Prakash Khedekar, Harshad on 25/07/20.
//

import SwiftUI

struct ContactInfo: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let email: String
    let number: String

    static func dummyData() -> [ContactInfo] {
        return [ContactInfo(name: "Harshad", email: "harshad.khedekar@gmail.com", number: "9876543210"),
                ContactInfo(name: "Vijay", email: "vijay@gmail.com", number: "9876543210"),
                ContactInfo(name: "Darshan", email: "darshan@gmail.com", number: "9876543210"),
                ContactInfo(name: "Neha", email: "neha@gmail.com", number: "9876543210"),
                ContactInfo(name: "John", email: "john@gmail.com", number: "9876543210"),
                ContactInfo(name: "Priya", email: "priya@gmail.com", number: "9876543210"),
                ContactInfo(name: "Mayur", email: "mayur@gmail.com", number: "9876543210"),
                ContactInfo(name: "Aniket", email: "aniket@gmail.com", number: "9876543210"),
                ContactInfo(name: "Shweta", email: "shweta@gmail.com", number: "9876543210")]
    }
}

