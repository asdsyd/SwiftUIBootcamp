//
//  AnyLayoutBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 11/05/25.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var veriticalSizeClass
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(veriticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(
                HStackLayout()
            )
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            
//            if horizontalSizeClass == .compact {
//                VStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            } else {
//                HStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//                
//            }
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
