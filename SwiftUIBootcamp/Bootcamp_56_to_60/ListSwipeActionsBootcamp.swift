//
//  ListSwipeActionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 06/05/25.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]

    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
            }
//            .onDelete(perform: delete)
            .swipeActions(edge: .trailing,
                          allowsFullSwipe: true) {
                Button("Archive") {
                    
                }
                .tint(.green)
                Button("Save") {
                    
                }
                .tint(.blue)
                Button("Junk") {
                    
                }
                .tint(.black)
            }
            .swipeActions(edge: .leading,
                          allowsFullSwipe: false) {
                  Button("Share") {
                      
                  }
                  .tint(.orange)
              }

            
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
