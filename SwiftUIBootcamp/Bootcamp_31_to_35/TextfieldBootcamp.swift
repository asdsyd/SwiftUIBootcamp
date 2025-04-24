//
//  TextfieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 24/04/25.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textfieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textfieldText)
        //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundStyle(.red)
                    .font(.headline)
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()

            }
            .padding()
            .navigationTitle("Textfield Bootcamp!")
        }
    }
    
    func textIsAppropriate() -> Bool {
        // check text
        if textfieldText.count >= 3 {
            return true
        }
        
        return false
    }
    
    func saveText() {
        dataArray.append(textfieldText)
        textfieldText = ""
    }
    
}

#Preview {
    TextfieldBootcamp()
}
