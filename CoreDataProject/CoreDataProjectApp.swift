//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by A.f. Adib on 11/19/23.
//

import SwiftUI

@main

struct CoreDataProjectApp: App {
    
    @StateObject private var dataController = DataController()
   
    
    var body: some Scene {
        WindowGroup {
          
//            FilterView()
//            ContentView()
//            ContentViewTwo()
            ContentViewThree()
                .environment(\.managedObjectContext,dataController.container.viewContext)
      
        }
    }
}
