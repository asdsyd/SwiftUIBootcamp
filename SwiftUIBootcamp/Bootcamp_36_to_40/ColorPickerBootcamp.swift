//
//  ColorPickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 24/04/25.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundStyle(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
