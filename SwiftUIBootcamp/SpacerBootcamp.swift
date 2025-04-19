//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 19/04/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
                
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(.yellow)
            .padding(.horizontal)
//            .background(.blue)
            
            Spacer()
                .frame(width: 10)
                .background(.orange)
            
            Rectangle()
                .frame(height: 55)
        }
//        .background(.yellow)
    }
}

#Preview {
    SpacerBootcamp()
}
