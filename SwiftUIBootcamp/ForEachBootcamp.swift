//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 19/04/25.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            ForEach(0..<100) { index in
                Circle()
                    .frame(height: 50)
            }
        }
        .font(.largeTitle)
        .fontWeight(.heavy)
    }
}

#Preview {
    ForEachBootcamp()
}
