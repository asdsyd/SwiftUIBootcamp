//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 17/04/25.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstack -> Vertical
    // Hstack -> Horizontal
    // Zstack -> zIndex (back to front)
    
    var body: some View {
        VStack(spacing: 50) {
            
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundStyle(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundStyle(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

#Preview {
    StacksBootcamp()
}
