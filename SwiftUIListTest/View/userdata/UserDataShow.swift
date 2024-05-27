//
//  UserDataShow.swift
//  SwiftUIListTest
//
//  Created by Masud  Parvez on 27/5/24.
//

import SwiftUI

struct UserDataShow: View {
    
    @ObservedObject var userDefault = UserDefaultManager()
    @State var userName :String = ""
    
    
    var body: some View {
        Text("User name is \(userDefault.apiToken)")
        VStack{
            TextField("Enter your name", text: $userName)
            
            Button("Ok", action: {
                userDefault.apiToken = "\(userName)"
            })
        }
    }
}

#Preview {
    UserDataShow()
}
