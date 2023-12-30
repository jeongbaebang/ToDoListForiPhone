//
//  ProfileView.swift
//  ToDoList
//
//  Created by jeongbae bang on 12/28/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user)
                } else {
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear(perform: {
            viewModel.fetchUser()
        })
    }
    
    @ViewBuilder
    func profile(_ user: User) -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(.blue)
            .frame(width: 125, height: 125)
            .padding()
        
        VStack(alignment: .leading) {
            HStack {
                Text("Name: ")
                    .bold()
                Text(user.name)
            }
            
            HStack {
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
            
            HStack {
                Text("Member Since: ")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
        }
        .padding()
        
        Button("Log Out") {
            viewModel.logOut()
        }
        .tint(.red)
        .padding()
        
        Spacer()
    }
}

#Preview {
    ProfileView()
}
