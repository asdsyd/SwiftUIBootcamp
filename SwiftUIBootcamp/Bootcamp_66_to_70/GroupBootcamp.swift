//
//  GroupBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 10/05/25.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello World")
            
            Group {
                Text("Hello World")
                Text("Hello World")
            }
            .font(.caption)
            .foregroundStyle(.green)
        }
        .foregroundStyle(.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
