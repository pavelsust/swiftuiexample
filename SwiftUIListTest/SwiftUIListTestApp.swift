//
//  SwiftUIListTestApp.swift
//  SwiftUIListTest
//
//  Created by Masud  Parvez on 14/1/24.
//

import SwiftUI

@main
struct SwiftUIListTestApp: App {
    
    @StateObject var viewModel : MainInfoData = MainInfoData()
    
    var body: some Scene {
        WindowGroup {
            TestView()
                .environmentObject(viewModel)
        }
    }
}
