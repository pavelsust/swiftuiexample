//
//  ListView.swift
//  SwiftUIListTest
//
//  Created by Masud  Parvez on 14/1/24.
//

import SwiftUI

struct ListView: View {
    
    var animalList = [Animal(id: 1, title: "Title 1"),
                      Animal(id: 2, title: "Title 2"),
                      Animal(id: 3, title: "Title 3"),
                      Animal(id: 4, title: "Title 4"),
                      Animal(id: 5, title: "Title 5"),]
    
    var body: some View{
        NavigationStack {
            List(animalList, id: \.title){ item in
                NavigationLink(destination: DetailsView(animal: item), label: {
                    CustomList(animal: item)
                })
            }
            .navigationTitle("Animal")
        }
    }
}

#Preview {
    ListView()
}
