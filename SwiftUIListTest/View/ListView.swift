//
//  ListView.swift
//  SwiftUIListTest
//
//  Created by Masud  Parvez on 14/1/24.
//

import SwiftUI

struct ListView: View {
    
    
    @State private var showFavouriteOnly = false
    
    var animalList = [Animal(id: 1, title: "Title 1", isFavourite: true),
                      Animal(id: 2, title: "Title 2", isFavourite: false),
                      Animal(id: 3, title: "Title 3", isFavourite: true),
                      Animal(id: 4, title: "Title 4", isFavourite: false),
                      Animal(id: 5, title: "Title 5", isFavourite: false)]
    
    
    var filternedAnimalList : [Animal] {
        animalList.filter{ animal in
            ( !showFavouriteOnly || animal.isFavourite)
        }
    }
    
    var body: some View {
        NavigationStack{
            List{
                Toggle("Only Favourite Show", isOn: $showFavouriteOnly)
                ForEach(filternedAnimalList, id: \.title){ animal in
                    NavigationLink(destination: DetailsView()){
                        CustomList(animal: animal)
                    }
                }
            }
            .navigationTitle("Hiking Trails")
        }
        
    }
}

#Preview {
    ListView()
}
