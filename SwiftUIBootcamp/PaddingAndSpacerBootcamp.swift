//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 19/04/25.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
                .multilineTextAlignment(.leading)
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .shadow(color: .black.opacity(0.3),
                        radius: 10,
                        x: 0, y: 0)
            
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
