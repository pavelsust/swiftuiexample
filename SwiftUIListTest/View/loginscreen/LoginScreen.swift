//
//  LoginScreen.swift
//  SwiftUIListTest
//
//  Created by Masud  Parvez on 22/8/24.
//

import SwiftUI


struct LoginScreen: View {
    
    
    @State var editName : String = ""
    @State var editPassword: String = ""
    
    
    
    var body: some View {
     
        ScrollView{
            VStack{
                Text("Login Here")
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Image("avengers")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .clipped()
                    .cornerRadius(10)
                    .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.accentColor , lineWidth: 2)
                    )
                    .padding(.trailing , 10)
                    .padding(.leading , 10)
                    .padding(.top , 20)
                
                
                Spacer(minLength: 120)
                
                CustomFieldView(iconName: "person", hintsText: "Enter Your Email",textField: $editName, isSecure: false)
                    .padding(.leading , 10)
                    .padding(.trailing , 10)
                
                CustomFieldView(iconName: "lock", hintsText: "Enter Your Email",textField: $editPassword, isSecure: true)
                    .padding(.leading , 10)
                    .padding(.trailing , 10)
                    .padding(.top , 10)
                
                
                Button(action: {
                    
                }, label: {
                    Text("Login")
                        .font(.system(.body , design: .rounded))
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/ , maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(12)
                        .padding()
                       
                })
                
            }
            
        }
        
    }
}

#Preview {
    LoginScreen()
}
