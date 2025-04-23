//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 23/04/25.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.callout)
                            .foregroundStyle(.white)
                            .padding(.vertical)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(Color.pink)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundStyle(.orange)
                }
                
                Section {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                } header: {
                    Text("Veggies")
                }

            }
//            .tint(Color.yellow)
//            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            }
            .tint(.red)
        }
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(IndexSet: IndexSet) {
        fruits.remove(atOffsets: IndexSet)
    }
    
    func move(IndexSet: IndexSet, Int: Int) {
        fruits.move(fromOffsets: IndexSet, toOffset: Int)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
