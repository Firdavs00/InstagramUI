//
//  ItemStory.swift
//  NotificationCenterObservableObject
//
//  Created by MacBook Pro on 13/08/21.
//

import SwiftUI

struct ItemStory: View {
    var img_story = "profile"
    var name_story = "Firdavs"
    var body: some View {
        VStack{
            Image(img_story).resizable().frame(width: 70, height: 70)
                .cornerRadius(35)
                .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.red, lineWidth: 2))
            Text(name_story).font(.system(size: 13.5))
        }.padding(.trailing, 10).frame(height: 100)
    }
}

struct ItemStory_Previews: PreviewProvider {
    static var previews: some View {
        ItemStory()
    }
}
