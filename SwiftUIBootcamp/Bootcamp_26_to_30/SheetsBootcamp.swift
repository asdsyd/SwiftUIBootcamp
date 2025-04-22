//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 22/04/25.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(5)
                    .padding(.horizontal , 20)
                    .background(Color.white.cornerRadius(20))
            }
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet) {
                // DO NOT ADD CONDITIONAL LOGIC
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    
//    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismissScreen
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button {
//                presentationMode.wrappedValue.dismiss()
                dismissScreen()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.red)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.white.cornerRadius(150))
                    .padding()
            }
        }
    }
}

#Preview {
    SheetsBootcamp()
//    SecondScreen()
}
