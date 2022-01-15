//
//  ListView.swift
//  TodoListApp
//
//  Created by Pavel Moskvichev on 15.01.2022.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "First task", isCompleted: true),
        ItemModel(title: "Second task", isCompleted: false),
        ItemModel(title: "Third task", isCompleted: true)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink(destination: AddView(), label: {Text("Add")}))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
