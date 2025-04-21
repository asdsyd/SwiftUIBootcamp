//
//  ButtonsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 22/04/25.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title).textCase(.uppercase)
            
            Button("Press Me") {
                self.title = "Button was pressesd!"
            }
            .tint(.purple)
            
            Button {
                self.title = "Button 2 was pressed"
            } label: {
                Text("Button 2".uppercased())
                    .font(.headline)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    )
            }
            
            Button {
                self.title = "Button #3"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 5)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.red)
                    }
            }
            
            Button {
                self.title = "Button #4 was clicked"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                    )
            }



        }
    }
}

#Preview {
    ButtonsBootcamp()
}
