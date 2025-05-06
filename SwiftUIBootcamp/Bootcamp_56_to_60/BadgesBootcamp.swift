//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 06/05/25.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        List {
            Text("Hello World")
                .badge("New items!")
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
        }
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("NEW")
//            
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//        }
    }
}

#Preview {
    BadgesBootcamp()
}
