//
//  FrameBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 12/04/25.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
//            .background(.green)
////            .frame(width: 300, height: 300, alignment: .center)
////            .background(.gray)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//            .background(.gray)
            .background(.green)
            .frame(maxHeight: 100, alignment: .top)
            .background(.gray)
            .frame(maxWidth: 150)
            .background(.yellow)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.pink)
            .frame(maxHeight: 400)
            .background(.blue)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.purple)

    }
}

#Preview {
    FrameBootcamp()
}
