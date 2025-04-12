//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 09/04/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the Swiftful thinking bootcamp. I am really enjoying this course and learning alot.".uppercased())
//            .font(.largeTitle)
//            .fontWeight(.black)
//            .underline(true, color: .green)
            .font(.system(size: 24, weight: .black, design: .rounded))
            .baselineOffset(2)
            .minimumScaleFactor(0.4)
            .kerning(5)
            .foregroundStyle(.brown)
            .frame(width: 200, height: 100, alignment: .center)
            .multilineTextAlignment(.leading)
            .padding()
    }
}

#Preview {
    TextBootcamp()
}
