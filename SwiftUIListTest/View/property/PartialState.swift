//
//  PartialState.swift
//  SwiftUIListTest
//
//  Created by Masud  Parvez on 14/9/24.
//

import Foundation
import SwiftUI


struct PartialState<Value, Equatable>{
    private class Storage: ObservableObject {
            var value: Value {
                didSet {
                    objectWillChange.send()
                }
            }
            
            init(value: Value) {
                self.value = value
            }
        }
    
    @StateObject private var storage : Storage
    
    var wrappedValue : Value {
        get{storage.value}
        nonmutating set {storage.value = newValue}
    }
    
}
