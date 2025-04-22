//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 22/04/25.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimated.toggle()
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 125 : 50)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .animation(
                    Animation
                        .default
                        .repeatForever(autoreverses: true)
                    , value: isAnimated)
                .offset(y: isAnimated ? 300 : 0)

            
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
