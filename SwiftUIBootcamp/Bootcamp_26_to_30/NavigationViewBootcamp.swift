//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 23/04/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
                NavigationLink("Hello, world!",
                               destination: MyOtherScreen())
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(
                        destination: MyOtherScreen()) {
                            Image(systemName: "gear")
                        }
                }
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                }
            }
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen!")
//                .navigationBarHidden(true)
            
            VStack {
                Button("Back Button") {
                    dismiss()
                }
                
                NavigationLink("Click here", destination: Text("3rd Screen"))

            }
            
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
