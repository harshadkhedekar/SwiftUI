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
            ListScrollView.navigationBarTitle("Scroll view")
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ListScrollView()
    }
}
