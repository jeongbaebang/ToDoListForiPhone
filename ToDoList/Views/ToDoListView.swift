//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by jeongbae bang on 12/28/23.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button {
                                viewModel.delete(id: item.id)
                             } label: {
                                Text("Delete")
                                    .foregroundStyle(.red)
                            }
                        }
                }
                .listStyle(PlainListStyle() )
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
            
            
        }
    }
}

#Preview {
    ToDoListView(userId: "jfRd7PT0bkZpRH7i67XdRIYEb4y2")
}
