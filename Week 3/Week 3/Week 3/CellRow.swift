//
//  ContentView.swift
//  Week 3
//
//  Created by Prakash Khedekar, Harshad on 25/07/20.
//

import SwiftUI

struct CellRow: View {
    let cellData: ContactCell

    var body: some View {
        HStack(spacing: 30) {
            Image(cellData.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30)
                .cornerRadius(5.0)
            VStack(alignment: .leading, spacing: 3) {
                Text(cellData.title).font(.headline)
                Text(cellData.subTitle).font(.subheadline)
            }

            Spacer()
            Button(action: buttonAction) {
                Image(systemName: "chevron.right")
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.black)
            }

        }
        .padding(10)
    }

    private func buttonAction() {

    }
}
