//
//  ContactDetails.swift
//  Week4
//
//  Created by Prakash Khedekar, Harshad on 26/07/20.
//

import SwiftUI

struct ContactDetails: View {
    let cellData: ContactInfo
    var body: some View {
        VStack {
            Text(cellData.name)
            Text(cellData.email)
            Text(cellData.number)
        }

    }
}

