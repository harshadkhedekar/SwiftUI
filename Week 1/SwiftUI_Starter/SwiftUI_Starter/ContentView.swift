//
//  ContentView.swift
//  SwiftUI_Starter
//
//  Created by Prakash Khedekar, Harshad on 30/06/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("""
                My First multiline
                Text in Swift UI !!!
                """)
            .multilineTextAlignment(.center)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 5)
                        .shadow(radius: 10.0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
