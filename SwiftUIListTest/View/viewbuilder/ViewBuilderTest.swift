//
//  ViewBuilderTest.swift
//  SwiftUIListTest
//
//  Created by Masud  Parvez on 20/3/24.
//

import SwiftUI

struct ViewBuilderTest: View {
    var body: some View {
        TabView {
            Text("First")
            Text("Second")
            Text("Third")
            Text("Fourth")
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .frame(width: .infinity, height: 100)
        .background(.yellow)
        
        CustomCardView(content: {
            Text("Hello World")
        })
      }
}


struct ShadowBorderModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .shadow(radius: 5)
    }
}


extension View {
    func dropShadow() -> some View {
        ModifiedContent(content: self, modifier: ShadowBorderModifier())
    }
}


struct CardView<Content: View>: View{
    let content : Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.yellow)
            .overlay(content)
    }
}


struct CustomCardView<Content: View>: View{
    let content : Content
    
    init(@ViewBuilder content: () -> Content){
        self.content = content()
    }
    
    var body: some View{
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.white)
            .overlay(content)
    }
}


@ViewBuilder
func buildDynamicView(condition : Bool) -> some View{
    if condition {
        Text("This view is Displayed")
    }else{
        Text("This view is hidden")
    }
}

#Preview {
    ViewBuilderTest()
}
