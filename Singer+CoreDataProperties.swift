//
//  Singer+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by A.f. Adib on 11/20/23.
//
//

import Foundation
import CoreData


extension Singer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    
    var wrappedFirstName: String {
        firstName ?? "ukn"
    }
    
    var wrappedLastName : String {
        lastName ?? "ukn"
    }

}

extension Singer : Identifiable {

}
