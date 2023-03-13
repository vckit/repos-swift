//
//  CoreDataManager.swift
//  Future2
//
//  Created by Абдулхаким Магомедов on 3/13/23.
//

import Foundation
import CoreData


class CoreDataManager {
    let persistentContainer: NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "Future2")
        persistentContainer.loadPersistentStores{desctiption, error in
            if let error = error {
                fatalError("Unable to initialize CoreData \(error)")
            }
        }
    }
}
