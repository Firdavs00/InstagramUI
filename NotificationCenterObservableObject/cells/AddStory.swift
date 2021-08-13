//
//  AddStory.swift
//  NotificationCenterObservableObject
//
//  Created by MacBook Pro on 13/08/21.
//

import SwiftUI

struct AddStory: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image("profile").resizable().frame(width: 70, height: 70)
                    .cornerRadius(35)
                Image("Image").resizable().frame(width: 24, height: 24)
                    .background(Color.white)
                    .cornerRadius(50)
            }
            Text("Firdavs").font(.system(size: 13.5))
        }.padding(.trailing, 10).frame(height: 100)
    }
}

struct AddStory_Previews: PreviewProvider {
    static var previews: some View {
        AddStory()
    }
}
