//
//  AddView.swift
//  TodoListApp
//
//  Created by Pavel Moskvichev on 15.01.2022.
//

import SwiftUI

struct AddView: View {
    
    @State var taskName: String = ""
    
    var body: some View {
        VStack {
            TextField("Typy some task here...", text: $taskName)
                .padding(.horizontal, 16)
                .frame(height: 55)
                .background(.gray.opacity(0.3))
                .cornerRadius(10)
            Button {
                
            } label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Add an Item 🖊")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
