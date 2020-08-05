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
    @State var shouldLogin: Bool = false
    @State var isError: Bool = false
    let textBackgroundColor = Color(red: 235/255, green: 235/255, blue: 235/255, opacity: 1)
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true, content: {
                VStack(alignment: .center) {
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
                    VStack {
                        TextField("Email", text: $email)
                            .padding(.horizontal, 15)
                            .frame(height: 40, alignment: .center)
                            .background(textBackgroundColor)
                            .cornerRadius(5)
                        SecureField("Password", text: $password)
                            .padding(.horizontal, 15)
                            .frame(height: 40, alignment: .center)
                            .background(textBackgroundColor)
                            .cornerRadius(5)
                    }
                    .padding(.horizontal, 20)
                    HStack(alignment: .center) {
                        Spacer()
                        Text("Forgot Password?")
                            .foregroundColor(.gray)
                            .fontWeight(.regular)
                            .font(.system(size: 15))
                    }
                    .padding(.bottom, 50)
                    .padding(.trailing, 20)
                    NavigationLink(destination: DetailView(), isActive: $shouldLogin) {
                        Button(action: loginTapped) {
                            Text("Login")
                                .fontWeight(.bold)
                                .padding(.horizontal, 150)
                        }
                        .frame(height: 40, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(5)
                        .alert(isPresented: $isError) {
                            Alert(title: Text("Error"), message: Text("Email or Password is invalid!"), dismissButton: .default(Text("Okay")))
                        }
                    }
                }
            })
            .navigationBarHidden(true)
        }
    }
    private func loginTapped() {
        if email.isValidEmail() && password.isValidPassword() {
            shouldLogin = true
            isError = false
        } else {
            shouldLogin = false
            isError = true
        }
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
