//
//  Status.swift
//  NotificationCenterObservableObject
//
//  Created by MacBook Pro on 12/08/21.
//

import Foundation
import Combine
class Status: ObservableObject{
    var didchange = PassthroughSubject<Status, Never>()
    @Published var userid: String?{ didSet{ self.didchange.send(self)}}
    
    func Listen(){
        if let userid = UserDefaults.standard.string(forKey: "userid"){
            self.userid = userid
        }else{
            self.userid = nil
        }
        
    }
    
}
