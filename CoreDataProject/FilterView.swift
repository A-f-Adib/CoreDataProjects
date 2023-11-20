//
//  FilterView.swift
//  CoreDataProject
//
//  Created by A.f. Adib on 11/20/23.
//

import SwiftUI

struct FilterView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var wizards: FetchedResults<Wizard>
    
    var body: some View {
        VStack {
            List(wizards, id: \.self) { wizard in
                Text(wizard.name ?? "unk")
            }
            
            Button("Add") {
                let wizard = Wizard(context: moc)
                wizard.name = "Harry potter"
            }
            
            Button("Save") {
                do {
                    try moc.save()
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
