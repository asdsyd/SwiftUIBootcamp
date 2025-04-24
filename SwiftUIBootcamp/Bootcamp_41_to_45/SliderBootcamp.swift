//
//  SliderBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 24/04/25.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue)
//                "\(sliderValue)"
            )
            .foregroundStyle(color)
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
//            Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1,
                onEditingChanged: { _ in
                    color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.largeTitle)
                    .foregroundStyle(.orange)
                ,
                maximumValueLabel:
                    Text("5"),
                label: {
                    Text("Title")
                })
                .tint(.red)
        }
        .padding(40)
    }
}

#Preview {
    SliderBootcamp()
}
