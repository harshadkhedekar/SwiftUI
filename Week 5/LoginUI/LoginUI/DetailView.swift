//
//  DetailView.swift
//  LoginUI
//
//  Created by Prakash Khedekar, Harshad on 05/08/20.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        NavigationView {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: true, content: {
                VStack {
                    Text("Detail screen")
                }
            })
            .navigationBarTitle("Detail screen")
            .navigationBarHidden(false)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
