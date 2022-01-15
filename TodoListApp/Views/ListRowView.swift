//
//  ListRowView.swift
//  TodoListApp
//
//  Created by Pavel Moskvichev on 15.01.2022.
//

import SwiftUI

struct ListRowView: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.square")
            Text(title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "First task")
    }
}
