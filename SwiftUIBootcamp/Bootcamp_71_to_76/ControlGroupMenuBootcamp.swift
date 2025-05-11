//
//  ControlGroupMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 11/05/25.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My menu") {
//            ControlGroup("One") {
            ControlGroup {
                Button("Uno") {
                    
                }
                Button("Dos") {
                    
                }
//                Button("Tres") {
//                    
//                }
                Menu("How are you") {
                    Button("Good") {
                        
                    }
                    Button("Okay") {
                        
                    }
                    Button("bad") {
                        
                    }


                }

            }
            Button("Two") {
                
            }
            Menu("Three") {
                Button("Hi") {
                    
                }
                Button("Hello") {
                    
                }
                
                


            }

        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
