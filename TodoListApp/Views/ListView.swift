//
//  ListView.swift
//  TodoListApp
//
//  Created by Pavel Moskvichev on 15.01.2022.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "First task",
        "Second task",
        "Third task",
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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
