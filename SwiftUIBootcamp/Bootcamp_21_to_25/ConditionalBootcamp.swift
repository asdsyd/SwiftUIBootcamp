//
//  ConditionalBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 22/04/25.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Is loading: \(isLoading.description)".uppercased()) {
                isLoading.toggle()
            }
            if isLoading {
                ProgressView()
            } else {
                Button("Circle Button: \(showCircle.description)") {
                    showCircle.toggle()
                }
                
                Button("Rectangle Button: \(showRectangle.description)") {
                    showRectangle.toggle()
                }
                
                if showCircle {
                    Circle()
                        .frame(width: 100, height: 100)
                    
                }
                
                if showRectangle {
                    Rectangle()
                        .frame(width: 100, height: 100)
                }
                
                if !showCircle || !showRectangle {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 200, height: 100)
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
