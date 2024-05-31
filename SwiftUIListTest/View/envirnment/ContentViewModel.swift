//
//  ContentViewModel.swift
//  SwiftUIListTest
//
//  Created by Masud  Parvez on 30/5/24.
//

import Foundation

class ContentViewModel : ObservableObject{
    @Published var user : User
    
    init(user: User) {
        self.user = user
    }
}
