//
//  NavigationSplitViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 11/05/25.
//

import SwiftUI

// NavigationSplitView -> iPad, MacOS, VisionOS

struct NavigationSplitViewBootcamp: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruits? = nil
    
    var body: some View {
        NavigationSplitView(
            columnVisibility: $visibility) {
                List(
                    FoodCategory.allCases,
                    id: \.rawValue,
                    selection: $selectedCategory) { category in
//                        Button(category.rawValue.capitalized) {
//                            selectedCategory = category
//                        }
                        NavigationLink(category.rawValue, value: category)
                    }
//                List {
//                    ForEach(FoodCategory.allCases, id: \.rawValue) { category in
//                        Button(category.rawValue.capitalized) {
//                            selectedCategory = category
//                        }
//                    }
//                }
                .navigationTitle("Categories")
            } content: {
                if let selectedCategory {
                    Group {
                        switch selectedCategory {
                        case .fruits:
//                            List {
//                                ForEach(
//                                    Fruits.allCases,
//                                    id: \.rawValue
//                                ) { fruit in
//                                    Button(fruit.rawValue.capitalized) {
//                                        selectedFruit = fruit
//                                    }
//                                }
//                            }
                            
                            List(
                                Fruits.allCases,
                                id: \.rawValue,
                                selection: $selectedFruit) { fruit in
//                                    Button(fruit.rawValue.capitalized) {
//                                        selectedFruit = fruit
//                                    }
                                    NavigationLink(fruit.rawValue, value: fruit)
                                }

                        case .vegetables:
                            EmptyView()
                        case .meats:
                            EmptyView()
                        }
                    }
                    .navigationTitle(selectedCategory.rawValue.capitalized)
                } else {
                    Text("Select a category to begin")
                }
            } detail: {
                if let selectedFruit {
                    Text("You selected: \(selectedFruit.rawValue.capitalized)")
                        .font(.largeTitle)
                        .navigationTitle(selectedFruit.rawValue.capitalized)
                } else {
                    Text("Select something!")
                }
            }
            .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    NavigationSplitViewBootcamp()
}

enum FoodCategory: String, CaseIterable {
    case fruits, vegetables, meats
}

enum Fruits: String, CaseIterable {
    case apple, banana, orange
}
