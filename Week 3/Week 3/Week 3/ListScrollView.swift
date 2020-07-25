//
//  ScrollView.swift
//  Week 3
//
//  Created by Prakash Khedekar, Harshad on 25/07/20.
//

import SwiftUI

struct ListScrollView: View {
    var body: some View {
        NavigationView {
            ScrollView() {
                ForEach(ContactCell.dummyData(), id: \.self) { listObject in
                    CellRow(cellData: listObject)
                }
            }
            .navigationBarTitle("List using Scrollview")
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ListScrollView()
    }
}
