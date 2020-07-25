//
//  Week4App.swift
//  Week4
//
//  Created by Prakash Khedekar, Harshad on 25/07/20.
//

import SwiftUI

@main
struct Week4App: App {
    var body: some Scene {
        WindowGroup {
            ListScrollView()
        }
    }
}

struct Week4App_Previews: PreviewProvider {
    static var previews: some View {
        ListScrollView()
    }
}
