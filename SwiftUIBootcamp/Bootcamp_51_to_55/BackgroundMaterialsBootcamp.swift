//
//  BackgroundMaterialsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 03/05/25.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image(.foodmeal1)
        )
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
