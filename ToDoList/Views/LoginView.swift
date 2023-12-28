//
//  LoginView.swift
//  ToDoList
//
//  Created by jeongbae bang on 12/28/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
                
                // Login Form
                Form {
                    TextField("이메일", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textContentType(.emailAddress)
                        .textInputAutocapitalization(.none)
                    
                    SecureField("비밀번호", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Log In",
                        background: .blue
                    ) {
                        // Attempt log In
                    }
                    
                }
                
                // Create Account
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create An Account", destination: RegisterVIew())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
