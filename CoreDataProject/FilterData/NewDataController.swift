//
//  NewDataController.swift
//  CoreDataProject
//
//  Created by A.f. Adib on 11/20/23.
//

import Foundation
import CoreData

class NewDataController: ObservableObject {
    let container = NSPersistentContainer(name: "CoreDataProject")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core data failed to load: \(error.localizedDescription)")
                return
            }
            
//            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
        }
    }
}
