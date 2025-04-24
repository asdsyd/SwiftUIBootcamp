//
//  TapGestureBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 24/04/25.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundStyle(isSelected ? .green : .red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("button".uppercased())
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            
            Text("tap gesture".uppercased())
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }

            
            Spacer()

        }
        .padding(40)
    }
}

#Preview {
    TapGestureBootcamp()
}
