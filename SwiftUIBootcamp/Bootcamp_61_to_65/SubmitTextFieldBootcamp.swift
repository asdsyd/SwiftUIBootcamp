//
//  SubmitTextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 06/05/25.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder...", text: $text)
                .onSubmit {
                    print("Somthing to the console")
                }
                .submitLabel(.route)
            TextField("Placeholder...", text: $text)
                .onSubmit {
                    print("Somthing to the console")
                }
                .submitLabel(.next)
            TextField("Placeholder...", text: $text)
                .onSubmit {
                    print("Somthing to the console")
                }
                .submitLabel(.search)

        }
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
