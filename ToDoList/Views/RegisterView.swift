//
//  RegisterVIew.swift
//  ToDoList
//
//  Created by jeongbae bang on 12/28/23.
//

import SwiftUI

struct RegisterVIew: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TextField("이메일", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("비밀번호", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    background: .green
                ) {
                    // Attempt log In
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
