//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 12/04/25.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image(.presenter)
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fill)
            .scaledToFill()
            .frame(width: 300, height: 200)
//            .foregroundStyle(.red)
//            .clipped()
//            .cornerRadius(150) //one way to do circle
            .clipShape(
//                .circle
//                RoundedRectangle(cornerRadius: 10)
//                Ellipse()
                Circle()
            )

    }
}

#Preview {
    ImageBootcamp()
}
