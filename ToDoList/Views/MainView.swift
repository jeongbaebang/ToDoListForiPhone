//
//  ContentView.swift
//  ToDoList
//
//  Created by jeongbae bang on 12/27/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        NavigationView {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                ToDoListView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    MainView()
}
