//
//  FocusStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 06/05/25.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField {
        case username
        case password
    }
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    @FocusState private var fieldInFocus: OnboardingField?
//    @FocusState private var usernameInFocus: Bool
//    @FocusState private var passwordInFocus: Bool
    
    var body: some View {
        VStack {
            TextField("Add your name here", text: $username)
                .focused($fieldInFocus, equals: .username)
//                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(30)
            
            SecureField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
//                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(30)

            Button("SIGN UP 🧨") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
//                    usernameInFocus = false
//                    passwordInFocus = true
                    fieldInFocus = .password
                } else {
//                    usernameInFocus = true
//                    passwordInFocus = false
                    fieldInFocus = .username
                }
            }
            .padding(20)
            
//            Button("Toggle Focus State") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
                fieldInFocus = .username
            }
        }
    }
}

#Preview {
    FocusStateBootcamp()
}
