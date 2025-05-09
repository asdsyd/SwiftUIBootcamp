//
//  ResizableSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 09/05/25.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.1), .medium, .large])
//                .presentationDetents([.height(100)])
                .presentationDetents(
                    [.medium, .large, .fraction(0.2), .height(600)],
                    selection: $detents
                )
                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        }
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
//            Color.red.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button("MEDIUM") {
                    detents = .medium
                    // will not work if not specificed in modifier beforehand
//                    detents = .fraction(0.5)
                }
                
                Button("20%") {
                    detents = .fraction(0.2)
                }

                
                Button("LARGE") {
                    detents = .large
                }
                
                Button("600 PX") {
                    detents = .height(600)
                }

            }

        }
    }
}

#Preview {
    ResizableSheetBootcamp()
}
