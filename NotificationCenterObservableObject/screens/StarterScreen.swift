//
//  StarterScreen.swift
//  NotificationCenterObservableObject
//
//  Created by MacBook Pro on 12/08/21.
//

import SwiftUI

struct StarterScreen: View {
    
    @EnvironmentObject var status: Status
    
    var body: some View {
        VStack{
            if self.status.userid != nil{
                HomeScreen()
            }else{
                SignInScreen()
            }
        }.onAppear(){
            status.Listen()
                
            }
        }
    }


struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
    }
}
