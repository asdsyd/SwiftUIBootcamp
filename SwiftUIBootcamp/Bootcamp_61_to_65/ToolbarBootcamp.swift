//
//  ToolbarBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 09/05/25.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
//                Color.indigo.ignoresSafeArea()
                
                ScrollView {
                    TextField("Placeholder", text: $text)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                    }
                }
            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear"))
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
//                        Image(systemName: "house.fill")
                        Image(systemName: "gear")
                    }
                }
            }
//            .navigationBarHidden(true)
//            .toolbarVisibility(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("title 1") {
                    paths.append("Screen 1")
                }
                Button("title 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen: \(value)")
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
