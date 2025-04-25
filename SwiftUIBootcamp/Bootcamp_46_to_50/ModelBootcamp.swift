//
//  ModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Asad Sayeed on 24/04/25.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
//        "Asad", "Nick", "Sara", "Chris"
        UserModel(displayName: "Asad", userName: "asdsyd", followerCount: 100, isVerified: true),
        UserModel(displayName: "Nick", userName: "nick123", followerCount: 55, isVerified: false),
        UserModel(displayName: "Sara", userName: "sarajay", followerCount: 50, isVerified: true),
        UserModel(displayName: "Chris", userName: "chrish2009", followerCount: 88, isVerified: false)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                            Text("@\(user.userName)")
                                .foregroundStyle(.secondary)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(.secondary)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)

                }
//                ForEach(users, id: \.self) { name in
//                }
            }
            .listStyle(DefaultListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
