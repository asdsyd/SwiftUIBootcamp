//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 12/04/25.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        
        Image(systemName: "folder.badge.plus")
            .renderingMode(.original)
//            .font(.largeTitle)
//            .font(.system(size: 250))
//            .foregroundStyle(.green.gradient)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 300)
//            .clipped()
    }
}

#Preview {
    IconsBootcamp()
}
