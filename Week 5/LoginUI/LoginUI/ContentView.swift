//
//  ContentView.swift
//  LoginUI
//
//  Created by Prakash Khedekar, Harshad on 31/07/20.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    let textBackgroundColor = Color(red: 235/255, green: 235/255, blue: 235/255, opacity: 1)
    var body: some View {
        NavigationView {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: true, content: {
                VStack() {
                    Image("logo")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .padding(.vertical, 50)
                    Text("Login")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                    Text("My First SwiftUI Login Page")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.system(size: 15))
                        .padding(.bottom, 50)
                    TextField("Email", text: $email)
                        .padding(.horizontal, 15)
                        .frame(width: 325, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(textBackgroundColor)
                        .cornerRadius(5)
                    SecureField("Password", text: $password)
                        .padding(.horizontal, 15)
                        .frame(width: 325, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(textBackgroundColor)
                        .cornerRadius(5)
                    HStack(alignment: .center) {
                        Spacer()
                        Text("Forgot Password?")
                            .foregroundColor(.gray)
                            .fontWeight(.regular)
                            .font(.system(size: 15))
                    }
                    .padding(.bottom, 50)
                    .padding(.trailing, 30)
                    Button(action: loginTapped) {
                        Text("Login")
                            .fontWeight(.bold)
                    }
                    .frame(width: 325, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(5)
                }
            })
            .navigationBarHidden(true)
        }
    }
    private func loginTapped() {
        if email.isValidEmail() && password.isValidPassword() {

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

extension String {
    func isValidEmail() -> Bool {
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
    }

    func isValidPassword() -> Bool {
        let password = self.trimmingCharacters(in: CharacterSet.whitespaces)
        let passwordRegx = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&<>*~:`-]).{8,}$"
        let passwordCheck = NSPredicate(format: "SELF MATCHES %@",passwordRegx)
        return passwordCheck.evaluate(with: password)
    }
}
