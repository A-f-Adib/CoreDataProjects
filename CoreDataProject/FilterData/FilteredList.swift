//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by A.f. Adib on 11/20/23.
//

import SwiftUI

struct FilteredList: View {
    @FetchRequest var fetchRequest : FetchedResults<Singer>
    
    var body: some View {
        List(fetchRequest, id: \.self){ singer in
            Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
        }
    }
    
    init (filter: String) {
        _fetchRequest = FetchRequest<Singer>(sortDescriptors: [], predicate: NSPredicate(format: "lastName BEGINSWITH %@", filter))
    }
}

