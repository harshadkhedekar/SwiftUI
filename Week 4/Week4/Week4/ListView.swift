//
//  ListView.swift
//  Week 3
//
//  Created by Prakash Khedekar, Harshad on 25/07/20.
//

import SwiftUI

struct ListView: View {
    @State private var sortingIndex = 0
    @State var contacts = ContactInfo.dummyData()
    var body: some View {
        NavigationView {
            VStack(spacing: 0.0) {
                Picker("Sort Contacts by", selection: $sortingIndex) {
                    Text("Name").tag(0)
                    Text("Email").tag(1)
                }.pickerStyle(SegmentedPickerStyle())
                .onReceive([self.sortingIndex].publisher.first(), perform: { (tag) in
                    switch tag {
                    case 0:
                        self.contacts.sort { $0.email < $1.email }
                    case 1:
                        self.contacts.sort { $0.name > $1.name }
                    default:
                        break
                    }
                })
                List{
                    ForEach(contacts, id: \.self) { listObject in
                        NavigationLink(destination: ContactDetails(cellData: listObject)) {
                            CellRow(cellData: listObject)
                        }
                    }
                }
                .listStyle(GroupedListStyle())
            }.navigationBarTitle("Contacts List view")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
