//
//  GridBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 19/04/25.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),


    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]) {
                Section(header:
                            Text("Section 1")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                ) {
                    ForEach(0..<21) { index in
                        Rectangle()
                            .frame(height: 150)
                    }

                }
                
                Section(header:
                            Text("Section 2")
                                .font(.largeTitle)
                ) {
                    ForEach(0..<21) { index in
                        Rectangle()
                            .fill(.green)
                            .frame(height: 150)
                    }

                }

            }
        }
    }
}

#Preview {
    GridBootcamp()
}
