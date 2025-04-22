//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 09/04/25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 20)
//            .fill(.brown)
//            .foregroundStyle(.indigo)
//            .stroke()
//            .stroke(.indigo)
            .stroke(.orange, lineWidth: 4)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 4, lineCap: .butt, lineJoin: .bevel, dash: [30]))
//            .trim(from: 0.5, to: 0.9)
//            .stroke(.purple, lineWidth: 40)
            .frame(width: 300, height: 200)
        
            .padding()
    }
}

#Preview {
    ShapesBootcamp()
}
