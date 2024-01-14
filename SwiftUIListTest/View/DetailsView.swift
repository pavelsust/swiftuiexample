//
//  DetailsView.swift
//  SwiftUIListTest
//
//  Created by Masud  Parvez on 14/1/24.
//

import SwiftUI

struct DetailsView: View {
    
    var animal: Animal
    var body: some View {
        Text(animal.title)
    }
}

#Preview {
    DetailsView(animal:Animal(id: 1, title: "Title 1"))
}
