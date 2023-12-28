//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by jeongbae bang on 12/27/23.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
