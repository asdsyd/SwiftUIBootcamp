//
//  AsyncImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 03/05/25.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            case .failure(_):
                Image(systemName: "questionmark")
                    .font(.largeTitle)
                    .foregroundStyle(.red)
            default:
                Image(systemName: "questionmark")
            }
        }
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//        }, placeholder: {
//            ProgressView()
//        })
    }
}

#Preview {
    AsyncImageBootcamp()
}
