//
//  RegisterVIew.swift
//  ToDoList
//
//  Created by jeongbae bang on 12/28/23.
//

import SwiftUI

struct RegisterVIew: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
            
            Form {
                TextField("Full Name2", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TextField("이메일", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("비밀번호", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    background: .green
                ) {
                    viewModel.register()
                    
                }
                
            }
            .offset(y: -50)
            
            Spacer()
        }
        
    }
}

#Preview {
    RegisterVIew()
}
