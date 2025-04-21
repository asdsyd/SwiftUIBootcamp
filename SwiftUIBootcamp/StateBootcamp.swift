//
//  StateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 22/04/25.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1".uppercased()) {
                        self.backgroundColor = Color.red
                        self.myTitle = "Button #1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2".uppercased()) {
                        self.backgroundColor = Color.green
                        self.myTitle = "Button #2 was pressed"
                        count -= 1
                    }

                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
