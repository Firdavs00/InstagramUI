//
//  SignUpScreen.swift
//  NotificationCenterObservableObject
//
//  Created by MacBook Pro on 12/08/21.
//

import SwiftUI

struct SignUpScreen: View {
    @Environment(\.presentationMode) var presentation
    @State var firstName = ""
    @State var lastname = ""
    @State var email = ""
    @State var address = ""
    @State var password = ""
    var body: some View {
        VStack{
            Spacer()
            TextField("Firstname", text: $firstName)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            TextField("Lastname", text: $lastname)
                .frame(height:45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            TextField("Email", text: $email)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            TextField("Address", text: $address)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            SecureField("Password", text: $password)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            Button(action: {
                
            }, label: {
                HStack{
                    Spacer()
                Text("Sign Up").foregroundColor(.white)
                    Spacer()
                }
            })
            .frame(height: 45)
            .background(Color.red)
            .cornerRadius(20)
            Spacer()
            HStack{
                Text("Already have an accaunt?").foregroundColor(.blue)
                Button(action: {
                    presentation.wrappedValue.dismiss()
                }, label: {
                    Text("SignIn")
                })
            }
        }.padding()
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
