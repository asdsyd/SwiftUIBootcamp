//
//  NativePopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 11/05/25.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very good 😊",
        "Average 🙂",
        "Very bad 😪"
    ]
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Button("Provide feeback?") {
                    showPopover.toggle()
                }
                .padding(20)
                .background(Color.yellow)
                .popover(
                    isPresented: $showPopover,
                    attachmentAnchor: .point(.top),
                    content: {
                        ScrollView {
                            VStack(alignment: .leading, spacing: 12) {
                                ForEach(feedbackOptions, id: \.self) { option in
                                    Button(option) {
                                        
                                    }
                                    
                                    if option != feedbackOptions.last {
                                        Divider()
                                    }
                                }
                            }
                            .padding(20)
                        }
                        .presentationCompactAdaptation(.popover)
                    }
                )

            }
        }

    }
}

#Preview {
    NativePopoverBootcamp()
}
