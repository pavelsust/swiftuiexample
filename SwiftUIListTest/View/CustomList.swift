//
//  CustomList.swift
//  SwiftUIListTest
//
//  Created by Masud  Parvez on 15/1/24.
//

import SwiftUI

struct CustomList: View {
    
    var animal: Animal
    var body: some View {
        HStack{
            Image("hiddenlake")
                .resizable()
                .frame(width: 50, height: 50)
            Text(animal.title)
                .font(.headline)
                .foregroundColor(.black)
            Spacer()
        }.frame(height: 80)
            .background(Color.teal)
    }
}

#Preview {
    CustomList(animal: Animal(id: 100, title: "Animal Name"))
}
