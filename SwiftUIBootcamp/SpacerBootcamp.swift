//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 19/04/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.orange)

            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)

            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)

            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)

            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.orange)

        }
        .background(.yellow)
//        .padding(.horizontal, 200)
        .background(.blue)
    }
}

#Preview {
    SpacerBootcamp()
}
