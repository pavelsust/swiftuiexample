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
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            DeviceRotationVew()
                .environmentObject(viewModel)
        }
    }
}
