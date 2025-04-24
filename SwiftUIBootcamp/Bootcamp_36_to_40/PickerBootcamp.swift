//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 24/04/25.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker(
            selection: $selection,
            label: Text("Picker")) {
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            }
            .pickerStyle(SegmentedPickerStyle())
//            .background(Color.red)
        
//        List {
//            Picker(
//                selection: $selection) {
//                    ForEach(filterOptions, id: \.self) { option in
//                        HStack {
//                            Text(option)
//                            Image(systemName: "flame.fill")
//                        }
//                        .tag(option)
//                    }
//                } label: {
//                    HStack {
//                        Text("Filter:")
//                        Text(selection)
//                    }
//                    .font(.caption)
//                    .foregroundStyle(.white)
//                    .padding()
//                    .padding(.horizontal, 5)
//                    .background(Color.blue)
//                    .cornerRadius(10)
//                    .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
//                }
//                .pickerStyle(MenuPickerStyle())
//
//
//        }
        
        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            Picker(
//                selection: $selection) {
//                    ForEach(18..<100) { number in
//                        Text("\(number)").tag("\(number)")
//                    }
//                } label: {
//                    Text("Picker")
//                }
////                .pickerStyle(PalettePickerStyle())
////                .background(Color.gray.opacity(0.2))
//        }

    }
}

#Preview {
    PickerBootcamp()
}
