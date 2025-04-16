//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 17/04/25.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Rectangle()
            .frame(width: 100, height: 100)
            .foregroundStyle(.gray)
            .overlay(alignment: .topLeading) {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 50, height: 50)
            }
            .background(
                Rectangle()
                    .fill(.purple)
                    .frame(width: 150, height: 150)
                , alignment: .bottomTrailing
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
