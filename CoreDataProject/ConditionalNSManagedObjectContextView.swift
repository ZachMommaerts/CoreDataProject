//
//  ConditionalNSManagedObjectContextView.swift
//  CoreDataProject
//
//  Created by Zach Mommaerts on 10/27/23.
//

import SwiftUI

struct ConditionalNSManagedObjectContextView: View {
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        Button("Save") {
            if moc.hasChanges {
                try? moc.save()
            }
        }
    }
}

#Preview {
    ConditionalNSManagedObjectContextView()
}
