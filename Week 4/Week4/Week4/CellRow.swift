//
//  ContentView.swift
//  Week 3
//
//  Created by Prakash Khedekar, Harshad on 25/07/20.
//

import SwiftUI

struct CellRow: View {
    let cellData: ContactInfo
    @State private var showingAlert = false
    var body: some View {
        HStack(spacing: 30) {
            VStack(alignment: .leading, spacing: 5) {
                Text(cellData.name)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .font(.system(size: 18))
                Text(cellData.email)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .font(.system(size: 16))
            }
            Spacer()
            Button(action: sendMessage) {
                Image(systemName: "message.fill")
                    .frame(width: 20, height: 20, alignment: .center)
                    .font(.body)
                    .foregroundColor(Color.green)
            }.alert(isPresented: $showingAlert) {
                Alert(title: Text("Still in Development"), message: Text("Please check back in some time"), dismissButton: .default(Text("Okay")))
            }

            Button(action: makeVideoCall) {
                Image(systemName: "video.fill")
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.black)
            }.alert(isPresented: $showingAlert) {
                Alert(title: Text("Still in Development"), message: Text("Please check back in some time"), dismissButton: .default(Text("Okay")))

            }
            
            Image(systemName: "chevron.right")
                .frame(width: 20, height: 20)
                .foregroundColor(Color.black)

        }.padding(10)
    }

    private func sendMessage() {
        self.showingAlert = true
    }

    private func makeVideoCall() {
        self.showingAlert = true
    }
}


struct CellRow_Previews: PreviewProvider {
    static var previews: some View {
        CellRow(cellData: ContactInfo(name: "Test Name", email: "test@email.com", number: "9876543210"))
    }
}
