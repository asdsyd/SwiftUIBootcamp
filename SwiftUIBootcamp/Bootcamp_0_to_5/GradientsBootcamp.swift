//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 09/04/25.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //                .indigo
                
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)),Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
                
                
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.black, Color.brown]),
//                    center: .topLeading,
//                    startRadius: 100,
//                    endRadius: 200)
                
                
                AngularGradient(
                    gradient: Gradient(colors: [Color.black, Color.green]),
                    center: .center,
                    angle: Angle(degrees: 0))
            )
            .frame(width: 300, height: 200, alignment: .center)
            
    }
}

#Preview {
    GradientsBootcamp()
}
