//
//  EditEmailView.swift
//  SwiftUIListTest
//
//  Created by Masud  Parvez on 30/5/24.
//

import SwiftUI

struct EditEmailView: View {
    
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            TextField("Work email address", text: $email)
                .font(.title3)
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.white)
                .cornerRadius(50)
                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0 , y: 20)
            
            Divider()
            Spacer()
            
        }
        .navigationTitle("Edit Email")
        .navigationBarTitleDisplayMode(.inline)
        .padding()
        .toolbar{
            ToolbarItem(placement: .topBarTrailing, content:{
                Button("Done", action: {
                    dismiss()
                }).fontWeight(.semibold)
            })
        }
        
    }
}

#Preview {
    EditAddressView()
}


struct EditAddressView : View {
    
    
    @State private var address : String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            TextField("Edit your address", text: $address)
                .font(.title3)
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.white)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0 , y: 20)
                Divider()
            Spacer()
        }
        .navigationTitle("Edit Address")
        .padding()
        .toolbar {
            ToolbarItem(placement: .topBarTrailing, content: {
                Button("Done", action: {
                    dismiss()
                }).fontWeight(.semibold)
            })
        }
    }
}
