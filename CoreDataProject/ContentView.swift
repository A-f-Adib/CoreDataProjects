//
//  ContentView.swift
//  CoreDataProject
//
//  Created by A.f. Adib on 11/19/23.
//
import CoreData
import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "universe == %@", "Star Wars")) var ships : FetchedResults<Ship>
    
    // "name < %@", "F" ==> Defiant, Enterprise, Executor
    // "name BEGINSWITH %@", "E" ==> Enterprise, Executor
    // "name BEGINSWITH[c] %@", "e" ==> Enterprise, Executor
    //  "NOT name BEGINSWITH[c] %@", "e" ==> Defiant, Millenial falcon
    
    
    
    var body: some View {
        VStack {
            List (ships, id: \.self) { ship in
                Text(ship.name ?? "ukn")
            }
            
            Button("Add") {
                let ship1 = Ship(context: moc)
                ship1.name = "Enterprise"
                ship1.universe = "Star trek"
                
                let ship2 = Ship(context: moc)
                ship2.name = "Defiant"
                ship2.universe = "Star trek"
                
                let ship3 = Ship(context: moc)
                ship3.name = "Millenial Falcon"
                ship3.universe = "Star Wars"
                
                let ship4 = Ship(context: moc)
                ship4.name = "Executor"
                ship4.universe = "Star Wars"
                
                try? moc.save()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
