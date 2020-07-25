//
//  ListView.swift
//  Week 3
//
//  Created by Prakash Khedekar, Harshad on 25/07/20.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(ContactCell.dummyData(), id: \.self) { listObject in
                    CellRow(cellData: listObject)
                }
            }.navigationBarTitle("List view")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
