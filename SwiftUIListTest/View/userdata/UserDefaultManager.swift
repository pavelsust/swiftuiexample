//
//  UserDefaultManager.swift
//  SwiftUIListTest
//
//  Created by Masud  Parvez on 27/5/24.
//

import Foundation


class UserDefaultManager : ObservableObject{
    
     @Published var firstToggle: Bool = UserDefaults.standard.bool(forKey: "firstToggle") {
          didSet { UserDefaults.standard.set(self.firstToggle, forKey: "firstToggle") }
      }

      @Published var secondToggle: Bool = UserDefaults.standard.bool(forKey: "secondToggle") {
          didSet { UserDefaults.standard.set(self.secondToggle, forKey: "secondToggle") }
      }
    
    
    @Published var apiToken : String = (UserDefaults.standard.string(forKey: Constant.API_TOKEN) ?? "Pavel"){
        didSet{UserDefaults.standard.set(self.firstToggle, forKey: Constant.API_TOKEN)}
    }
}
