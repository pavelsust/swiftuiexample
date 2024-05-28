//
//  ProfileEditView.swift
//  SwiftUIListTest
//
//  Created by Masud  Parvez on 29/5/24.
//

import SwiftUI
import AlertToast

struct ProfileEditView: View {
    
    
    @State var isToastMessageShow : Bool = false
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear{
                self.isToastMessageShow = true
                debugPrint("View Appear")
            }
        
            .onDisappear{
                self.isToastMessageShow = true
                debugPrint("View Disappear")
            }
            .toast(isPresenting: $isToastMessageShow){
                AlertToast(displayMode: .banner(.pop), type: .regular, title: "Message Sent!")
            }
    }
}

#Preview {
    ProfileEditView()
}
