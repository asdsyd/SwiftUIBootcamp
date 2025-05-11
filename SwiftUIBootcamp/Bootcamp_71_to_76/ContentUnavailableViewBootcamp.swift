//
//  ContentUnavailableViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 11/05/25.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
//        ContentUnavailableView.search(text: "abc")
        ContentUnavailableView(
            "No Internet Connection",
            systemImage: "wifi.slash",
            description: Text("Please connect to the internet and try again."))
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
