//
//  ContentView.swift
//  SwiftUIChallenge
//
//  Created by Prakash Khedekar, Harshad on 10/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(content: {
            Text("Text with Landscape image")
                .font(.title3)
            Image("landscape")
                .resizable()
                .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .scaledToFit()
                .border(Color.blue, width: 3.0)
                .cornerRadius(16.0)
                .clipped()
            Image(systemName: "person")
                .resizable()
                .font(.largeTitle)
                .foregroundColor(.red)
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        })

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
