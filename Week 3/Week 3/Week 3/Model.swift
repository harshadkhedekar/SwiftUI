//
//  Model.swift
//  Week 3
//
//  Created by Prakash Khedekar, Harshad on 25/07/20.
//

import SwiftUI

struct ContactCell: Identifiable, Hashable {
    let id: Int
    let title: String
    let subTitle: String
    let imageName: String

    static func dummyData() -> [ContactCell] {
        return [ContactCell(id: 0, title: "title1", subTitle: "subtitle1", imageName: "landscape"),
                ContactCell(id: 1, title: "title2", subTitle: "subtitle2", imageName: "landscape"),
                ContactCell(id: 2, title: "title3", subTitle: "subtitle3", imageName: "landscape")]
    }
}
