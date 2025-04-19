//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 20/04/25.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
//        ZStack {
//            // background
//            Color.blue
//                .ignoresSafeArea()
//            
//            // foreground
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
//        }

        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(.red)
    }
}

#Preview {
    SafeAreaBootcamp()
}
