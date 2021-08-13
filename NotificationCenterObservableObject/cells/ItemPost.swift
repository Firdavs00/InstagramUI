//
//  ItemPost.swift
//  NotificationCenterObservableObject
//
//  Created by MacBook Pro on 13/08/21.
//

import SwiftUI

struct ItemPost: View {
  
    var img_url = "ic_02"
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image("profile").resizable().frame(width: 50, height: 50)
                    .cornerRadius(20)
                HStack{
                    Text("Firdavs Boltayev").font(.system(size: 14)).fontWeight(.bold)
                    Text("Follow").font(.system(size: 14)).fontWeight(.bold).foregroundColor(.blue)
                    Spacer()
                    Image(systemName: "location")
                }
            }
            HStack{
                Image(img_url).resizable()
                    .scaledToFit()
                    .padding(.leading, -20)
                    .padding(.trailing, -20)
            }
            HStack{
                Image("ic_like")
                Image("ic_comment")
                Image("ic_reply")
                Spacer()
                Image("ic_bookmark")
            }
            Text("Liked by Feruz and 101 others").font(.system(size: 13.5))
                .padding(.bottom, 10)
            Text("Feruz Thanks for sharing this post Thanks for sharing")
                .font(.system(size: 13.5))
                    .padding(.bottom, 10)
        }
    }
}

struct ItemPost_Previews: PreviewProvider {
    static var previews: some View {
        ItemPost()
    }
}
