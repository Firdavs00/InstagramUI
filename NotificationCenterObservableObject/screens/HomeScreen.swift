//
//  HomeScreen.swift
//  NotificationCenterObservableObject
//
//  Created by MacBook Pro on 12/08/21.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var status: Status
    var body: some View {
        NavigationView{
            List{
                ScrollView(.horizontal){
                HStack{
                    
                    AddStory()
                    ItemStory(img_story: "person1", name_story: "Alisa")
                    ItemStory(img_story: "person3", name_story: "Albert")
                    ItemStory(img_story: "personImage1", name_story: "Lili")
                    ItemStory(img_story: "personImage2", name_story: "Martin")
                    ItemStory(img_story: "person1", name_story: "Alisa")
                    ItemStory(img_story: "person2", name_story: "Jack")
                    ItemStory(img_story: "person3", name_story: "Albert")
                    ItemStory(img_story: "personImage1", name_story: "Lili")
                        ItemStory(img_story: "personImage2", name_story: "Martin")
                    
                    
                }.frame(height: 100)
                }
                VStack{
                    ItemPost(img_url: "ic_02")
                    ItemPost(img_url: "ic_1")
                    ItemPost(img_url: "ic_3")
                    ItemPost(img_url: "ic_03")
                    ItemPost(img_url: "ic_02")
                    ItemPost(img_url: "ic_1")
                    ItemPost(img_url: "ic_3")
                    ItemPost(img_url: "ic_03")
                    
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Instagram", displayMode: .inline)
            .navigationBarItems(
                leading: Image(systemName: "camera").foregroundColor(.black),
                trailing: Button(action: {
                    UserDefaults.standard.removeObject(forKey: "userid")
                    status.Listen()
                }, label: {
                    Image(systemName: "person").foregroundColor(.black)
                }))
            .toolbar(content: {
                ToolbarItem(placement: .bottomBar){
                    Image(systemName: "house")
                }
                ToolbarItem(placement: .bottomBar){
                    Spacer()
                }
                ToolbarItem(placement: .bottomBar){
                    Image("ic_search")
                }
                ToolbarItem(placement: .bottomBar){
                    Spacer()
                }
                ToolbarItem(placement: .bottomBar){
                    Image("ic_add_box")
                }
                ToolbarItem(placement: .bottomBar){
                    Spacer()
                }
                ToolbarItem(placement: .bottomBar){
                    Image("ic_like")
                }
                ToolbarItem(placement: .bottomBar){
                    Spacer()
                }
                ToolbarItem(placement: .bottomBar){
                    Image(systemName: "person")
                }
            })
            
        }
      
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
