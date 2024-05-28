//
//  ProfileView.swift
//  SwiftUIListTest
//
//  Created by Masud  Parvez on 29/5/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        NavigationStack{
            List{
                NavigationLink{
                    ProfileEditView()
                }label: {
                    HStack{
                        Text("JD")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(width: 48 , height: 48)
                            .background(Color(.systemGray4))
                            .clipShape(.circle)
                        
                        VStack(alignment: .leading,content: {
                            
                            Text("John Doe")
                                .font(.subheadline)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                            Text("pavelcep.sust11@gmail.com")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .padding(.leading , 2)
                                .foregroundColor(.gray)
                            
                            Text("Demra, Dhaka")
                                .font(.footnote)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundStyle(.gray)
                                .padding(.leading, 2)
                        })
                    }
                }
            }
        }
        
        .onAppear{
            debugPrint("Hello world")
        }
        .onDisappear{
            debugPrint("Hello world")
        }
    }
}

#Preview {
    ProfileView()
}
