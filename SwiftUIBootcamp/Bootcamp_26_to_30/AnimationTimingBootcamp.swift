//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 22/04/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.spring(
                    response: 0.5,
                    dampingFraction: 0.6,
                    blendDuration: 1), value: isAnimating)
//                .animation(Animation.linear(duration: timing), value: isAnimating)
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing), value: isAnimating)

        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
