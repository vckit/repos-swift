//
//  Future2App.swift
//  Future2
//
//  Created by Абдулхаким Магомедов on 3/13/23.
//

import SwiftUI

@main
struct Future2App: App {
    let persistentContainer = CoreDataManager.shared.persistentContainer
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
