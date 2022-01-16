//
//  TodoListAppApp.swift
//  TodoListApp
//
//  Created by Pavel Moskvichev on 15.01.2022.
//

import SwiftUI

@main
struct TodoListAppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
