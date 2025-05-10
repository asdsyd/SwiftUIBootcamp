//
//  SafeAreaInsetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 09/05/25.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
//            .overlay (
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//                , alignment: .bottom
//            )
            .safeAreaInset(
                edge: .top,
                alignment: .leading,
                spacing: nil) {
                    Text("Hi")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.yellow)
                        .clipShape(.circle)
                        .padding()
                }
            
//                .safeAreaInset(
//                    edge: .top,
//                    alignment: .trailing,
//                    spacing: nil) {
//                        Text("Hi")
//                            .frame(maxWidth: .infinity)
//    //                        .padding()
//                            .background(Color.yellow)
//    //                        .clipShape(.circle)
//    //                        .padding()
//                    }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
