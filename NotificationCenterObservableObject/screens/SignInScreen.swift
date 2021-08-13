//
//  SignInScreen.swift
//  NotificationCenterObservableObject
//
//  Created by MacBook Pro on 12/08/21.
//

import SwiftUI

struct SignInScreen: View {
    @EnvironmentObject var status: Status
    @State var isPresent = false
    @State var userId = ""
    @State var userPw = ""
    var body: some View {
        NavigationView{
        VStack{
            Spacer()
            Image("person1").resizable().aspectRatio(contentMode: .fill)
                .frame(width:120, height: 120)
                .clipShape(Circle())
            TextField("User ID", text: $userId)
                .frame(height:45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            TextField("User PW", text: $userPw)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            Button(action: {
                UserDefaults.standard.set("pdp@gmail.com", forKey: "userid")
                status.Listen()
            }, label: {
                HStack{
                    Spacer()
                Text("Sign In").foregroundColor(.white)
                    Spacer()
                }
            })
            .frame(height: 45)
            .background(Color.red)
            .cornerRadius(20)
            Spacer()
            HStack{
                Text("Don't have an accaunt?").foregroundColor(.blue)
                NavigationLink(
                    destination: SignUpScreen(),
                    label: {
                        Text("SignUp")
                    })
                .font(.system(size: 18))
            }
        }.padding()
        .navigationBarTitle("Insttagram", displayMode: .inline)
    }
}
}
struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}
