//
//  ViewThatFitsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 11/05/25.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I would like to display!")
                Text("This is some text ")
            }
//            Text("This is some text that I would like to display to the user!")
//                .lineLimit(1)
////                .minimumScaleFactor(0.3)
        }
        .frame(height: 300)
        .padding(16)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
