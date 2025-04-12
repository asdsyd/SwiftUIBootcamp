//
//  ColorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 09/04/25.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                .primary
//                Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 0.5025351821))
//                Color(uiColor: .secondarySystemBackground)
                .custom
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: .custom.opacity(0.5), radius: 30, x: -20, y: 20)
    }
}

#Preview {
    ColorsBootcamp()
}
